
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmbus_channel_rescind_offer {int child_relid; } ;
struct vmbus_channel_message_header {int dummy; } ;
struct vmbus_channel {int work; int controlwq; } ;


 int queue_work (int ,int *) ;
 struct vmbus_channel* relid2channel (int ) ;

__attribute__((used)) static void vmbus_onoffer_rescind(struct vmbus_channel_message_header *hdr)
{
 struct vmbus_channel_rescind_offer *rescind;
 struct vmbus_channel *channel;

 rescind = (struct vmbus_channel_rescind_offer *)hdr;
 channel = relid2channel(rescind->child_relid);

 if (channel == ((void*)0))

  return;



 queue_work(channel->controlwq, &channel->work);
}
