
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int child_relid; } ;
struct vmbus_channel {int sig_event; int is_dedicated_interrupt; TYPE_1__ offermsg; } ;
struct TYPE_4__ {scalar_t__ send_int_page; } ;


 int hv_signal_event (int ) ;
 int sync_set_bit (int,unsigned long*) ;
 TYPE_2__ vmbus_connection ;

int vmbus_set_event(struct vmbus_channel *channel)
{
 u32 child_relid = channel->offermsg.child_relid;

 if (!channel->is_dedicated_interrupt) {

  sync_set_bit(child_relid & 31,
   (unsigned long *)vmbus_connection.send_int_page +
   (child_relid >> 5));
 }

 return hv_signal_event(channel->sig_event);
}
