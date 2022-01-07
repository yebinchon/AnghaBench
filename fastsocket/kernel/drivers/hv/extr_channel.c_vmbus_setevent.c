
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int child_relid; scalar_t__ monitor_allocated; } ;
struct vmbus_channel {int monitor_bit; size_t monitor_grp; TYPE_2__ offermsg; } ;
struct hv_monitor_page {TYPE_1__* trigger_group; } ;
struct TYPE_6__ {struct hv_monitor_page* monitor_pages; scalar_t__ send_int_page; } ;
struct TYPE_4__ {int pending; } ;


 int sync_set_bit (int,unsigned long*) ;
 TYPE_3__ vmbus_connection ;
 int vmbus_set_event (struct vmbus_channel*) ;

__attribute__((used)) static void vmbus_setevent(struct vmbus_channel *channel)
{
 struct hv_monitor_page *monitorpage;

 if (channel->offermsg.monitor_allocated) {

  sync_set_bit(channel->offermsg.child_relid & 31,
   (unsigned long *) vmbus_connection.send_int_page +
   (channel->offermsg.child_relid >> 5));

  monitorpage = vmbus_connection.monitor_pages;
  monitorpage++;

  sync_set_bit(channel->monitor_bit,
   (unsigned long *)&monitorpage->trigger_group
     [channel->monitor_grp].pending);

 } else {
  vmbus_set_event(channel);
 }
}
