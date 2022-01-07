
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtip_port {int flags; int* cmds_to_issue; int svc_wait; } ;
struct driver_data {int slot_groups; int dd_flag; struct mtip_port* port; } ;


 unsigned long MTIP_DDF_REBUILD_FAILED_BIT ;
 unsigned long MTIP_DDF_REMOVE_PENDING_BIT ;
 unsigned long MTIP_PF_ISSUE_CMDS_BIT ;
 int MTIP_PF_PAUSE_IO ;
 unsigned long MTIP_PF_REBUILD_BIT ;
 unsigned long MTIP_PF_SVC_THD_ACTIVE_BIT ;
 unsigned long MTIP_PF_SVC_THD_STOP_BIT ;
 int clear_bit (unsigned long,int*) ;
 unsigned long find_next_bit (int*,unsigned int,unsigned long) ;
 scalar_t__ kthread_should_stop () ;
 int mtip_ftl_rebuild_poll (struct driver_data*) ;
 int mtip_issue_ncq_command (struct mtip_port*,unsigned long) ;
 int set_bit (unsigned long,int*) ;
 int test_bit (unsigned long,int*) ;
 scalar_t__ unlikely (int) ;
 int wait_event_interruptible (int ,int) ;

__attribute__((used)) static int mtip_service_thread(void *data)
{
 struct driver_data *dd = (struct driver_data *)data;
 unsigned long slot, slot_start, slot_wrap;
 unsigned int num_cmd_slots = dd->slot_groups * 32;
 struct mtip_port *port = dd->port;

 while (1) {




  wait_event_interruptible(port->svc_wait, (port->flags) &&
   !(port->flags & MTIP_PF_PAUSE_IO));

  if (kthread_should_stop())
   break;

  if (unlikely(test_bit(MTIP_DDF_REMOVE_PENDING_BIT,
    &dd->dd_flag)))
   break;

  set_bit(MTIP_PF_SVC_THD_ACTIVE_BIT, &port->flags);
  if (test_bit(MTIP_PF_ISSUE_CMDS_BIT, &port->flags)) {
   slot = 1;

   slot_start = num_cmd_slots;
   slot_wrap = 0;
   while (1) {
    slot = find_next_bit(port->cmds_to_issue,
      num_cmd_slots, slot);
    if (slot_wrap == 1) {
     if ((slot_start >= slot) ||
      (slot >= num_cmd_slots))
      break;
    }
    if (unlikely(slot_start == num_cmd_slots))
     slot_start = slot;

    if (unlikely(slot == num_cmd_slots)) {
     slot = 1;
     slot_wrap = 1;
     continue;
    }


    mtip_issue_ncq_command(port, slot);

    clear_bit(slot, port->cmds_to_issue);
   }

   clear_bit(MTIP_PF_ISSUE_CMDS_BIT, &port->flags);
  } else if (test_bit(MTIP_PF_REBUILD_BIT, &port->flags)) {
   if (!mtip_ftl_rebuild_poll(dd))
    set_bit(MTIP_DDF_REBUILD_FAILED_BIT,
       &dd->dd_flag);
   clear_bit(MTIP_PF_REBUILD_BIT, &port->flags);
  }
  clear_bit(MTIP_PF_SVC_THD_ACTIVE_BIT, &port->flags);

  if (test_bit(MTIP_PF_SVC_THD_STOP_BIT, &port->flags))
   break;
 }
 return 0;
}
