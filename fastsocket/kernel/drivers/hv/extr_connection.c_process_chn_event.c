
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct vmbus_channel {int batched_reading; int inbound_lock; int inbound; int (* onchannel_callback ) (void*) ;void* channel_callback_context; } ;


 int hv_begin_read (int *) ;
 scalar_t__ hv_end_read (int *) ;
 int pr_err (char*,scalar_t__) ;
 struct vmbus_channel* relid2channel (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (void*) ;

__attribute__((used)) static void process_chn_event(u32 relid)
{
 struct vmbus_channel *channel;
 unsigned long flags;
 void *arg;
 bool read_state;
 u32 bytes_to_read;





 channel = relid2channel(relid);

 if (!channel) {
  pr_err("channel not found for relid - %u\n", relid);
  return;
 }
 spin_lock_irqsave(&channel->inbound_lock, flags);
 if (channel->onchannel_callback != ((void*)0)) {
  arg = channel->channel_callback_context;
  read_state = channel->batched_reading;
  do {
   hv_begin_read(&channel->inbound);
   channel->onchannel_callback(arg);
   bytes_to_read = hv_end_read(&channel->inbound);
  } while (read_state && (bytes_to_read != 0));
 } else {
  pr_err("no channel callback for relid - %u\n", relid);
 }

 spin_unlock_irqrestore(&channel->inbound_lock, flags);
}
