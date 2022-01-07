
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mtip_port {unsigned long flags; long ic_pause_timer; int cmd_timer; int svc_wait; TYPE_2__* dd; int cmd_slot; struct mtip_cmd* commands; int * completed; } ;
struct mtip_cmd {unsigned long comp_time; int active; int direction; int scatter_ents; int sg; int * comp_func; int (* async_callback ) (int ,int ) ;int async_data; scalar_t__ command; } ;
struct host_to_dev_fis {int dummy; } ;
struct TYPE_5__ {unsigned long dd_flag; int slot_groups; TYPE_1__* pdev; } ;
struct TYPE_4__ {int dev; } ;


 int EIO ;
 int MTIP_DDF_RESUME_BIT ;
 int MTIP_PF_DM_ACTIVE_BIT ;
 int MTIP_PF_EH_ACTIVE_BIT ;
 int MTIP_PF_IC_ACTIVE_BIT ;
 int MTIP_PF_SE_ACTIVE_BIT ;
 int MTIP_TAG_INTERNAL ;
 int MTIP_TIMEOUT_CHECK_PERIOD ;
 int SLOTBITS_IN_LONGS ;
 scalar_t__ atomic_read (int *) ;
 int atomic_set (int *,int ) ;
 int clear_bit (int,unsigned long*) ;
 int dma_unmap_sg (int *,int ,int ,int ) ;
 scalar_t__ jiffies ;
 scalar_t__ likely (int (*) (int ,int )) ;
 int memset (unsigned long*,int ,int) ;
 int mod_timer (int *,scalar_t__) ;
 unsigned long msecs_to_jiffies (int) ;
 int mtip_device_reset (TYPE_2__*) ;
 int print_tags (TYPE_2__*,char*,unsigned long*,int) ;
 int release_slot (struct mtip_port*,int) ;
 int set_bit (int,unsigned long*) ;
 int stub1 (int ,int ) ;
 scalar_t__ test_bit (int,unsigned long*) ;
 scalar_t__ time_after (scalar_t__,unsigned long) ;
 scalar_t__ unlikely (int) ;
 int up (int *) ;
 int wake_up_interruptible (int *) ;
 int writel (int,int ) ;

__attribute__((used)) static void mtip_timeout_function(unsigned long int data)
{
 struct mtip_port *port = (struct mtip_port *) data;
 struct host_to_dev_fis *fis;
 struct mtip_cmd *command;
 int tag, cmdto_cnt = 0;
 unsigned int bit, group;
 unsigned int num_command_slots;
 unsigned long to, tagaccum[SLOTBITS_IN_LONGS];

 if (unlikely(!port))
  return;

 if (test_bit(MTIP_DDF_RESUME_BIT, &port->dd->dd_flag)) {
  mod_timer(&port->cmd_timer,
   jiffies + msecs_to_jiffies(30000));
  return;
 }

 memset(tagaccum, 0, SLOTBITS_IN_LONGS * sizeof(long));
 num_command_slots = port->dd->slot_groups * 32;

 for (tag = 0; tag < num_command_slots; tag++) {




  if (tag == MTIP_TAG_INTERNAL)
   continue;

  if (atomic_read(&port->commands[tag].active) &&
     (time_after(jiffies, port->commands[tag].comp_time))) {
   group = tag >> 5;
   bit = tag & 0x1F;

   command = &port->commands[tag];
   fis = (struct host_to_dev_fis *) command->command;

   set_bit(tag, tagaccum);
   cmdto_cnt++;
   if (cmdto_cnt == 1)
    set_bit(MTIP_PF_EH_ACTIVE_BIT, &port->flags);






   writel(1 << bit, port->completed[group]);


   if (likely(command->async_callback))
    command->async_callback(command->async_data,
        -EIO);
   command->async_callback = ((void*)0);
   command->comp_func = ((void*)0);


   dma_unmap_sg(&port->dd->pdev->dev,
     command->sg,
     command->scatter_ents,
     command->direction);





   atomic_set(&port->commands[tag].active, 0);
   release_slot(port, tag);

   up(&port->cmd_slot);
  }
 }

 if (cmdto_cnt) {
  print_tags(port->dd, "timed out", tagaccum, cmdto_cnt);
  if (!test_bit(MTIP_PF_IC_ACTIVE_BIT, &port->flags)) {
   mtip_device_reset(port->dd);
   wake_up_interruptible(&port->svc_wait);
  }
  clear_bit(MTIP_PF_EH_ACTIVE_BIT, &port->flags);
 }

 if (port->ic_pause_timer) {
  to = port->ic_pause_timer + msecs_to_jiffies(1000);
  if (time_after(jiffies, to)) {
   if (!test_bit(MTIP_PF_IC_ACTIVE_BIT, &port->flags)) {
    port->ic_pause_timer = 0;
    clear_bit(MTIP_PF_SE_ACTIVE_BIT, &port->flags);
    clear_bit(MTIP_PF_DM_ACTIVE_BIT, &port->flags);
    clear_bit(MTIP_PF_IC_ACTIVE_BIT, &port->flags);
    wake_up_interruptible(&port->svc_wait);
   }


  }
 }


 mod_timer(&port->cmd_timer,
  jiffies + msecs_to_jiffies(MTIP_TIMEOUT_CHECK_PERIOD));
}
