
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int msgtype; } ;
struct vmbus_channel_close_channel {int child_relid; TYPE_2__ header; } ;
struct TYPE_6__ {int child_relid; } ;
struct TYPE_4__ {struct vmbus_channel_close_channel msg; } ;
struct vmbus_channel {int ringbuffer_pagecount; scalar_t__ ringbuffer_pages; scalar_t__ ringbuffer_gpadlhandle; TYPE_3__ offermsg; TYPE_1__ close_msg; int inbound_lock; int * onchannel_callback; int * sc_creation_callback; int state; } ;


 int BUG_ON (int) ;
 int CHANNELMSG_CLOSECHANNEL ;
 int CHANNEL_OPEN_STATE ;
 int PAGE_SIZE ;
 int free_pages (unsigned long,int ) ;
 int get_order (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int vmbus_post_msg (struct vmbus_channel_close_channel*,int) ;
 int vmbus_teardown_gpadl (struct vmbus_channel*,scalar_t__) ;

__attribute__((used)) static void vmbus_close_internal(struct vmbus_channel *channel)
{
 struct vmbus_channel_close_channel *msg;
 int ret;
 unsigned long flags;

 channel->state = CHANNEL_OPEN_STATE;
 channel->sc_creation_callback = ((void*)0);

 spin_lock_irqsave(&channel->inbound_lock, flags);
 channel->onchannel_callback = ((void*)0);
 spin_unlock_irqrestore(&channel->inbound_lock, flags);



 msg = &channel->close_msg.msg;

 msg->header.msgtype = CHANNELMSG_CLOSECHANNEL;
 msg->child_relid = channel->offermsg.child_relid;

 ret = vmbus_post_msg(msg, sizeof(struct vmbus_channel_close_channel));

 BUG_ON(ret != 0);

 if (channel->ringbuffer_gpadlhandle)
  vmbus_teardown_gpadl(channel,
       channel->ringbuffer_gpadlhandle);

 free_pages((unsigned long)channel->ringbuffer_pages,
  get_order(channel->ringbuffer_pagecount * PAGE_SIZE));


}
