
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xpc_send_msg_slot_uv {int msg_slot_number; int next; } ;
struct xpc_channel_uv {int msg_slot_free_list; struct xpc_send_msg_slot_uv* send_msg_slots; } ;
struct TYPE_2__ {struct xpc_channel_uv uv; } ;
struct xpc_channel {int local_nentries; int lock; TYPE_1__ sn; } ;
typedef enum xp_retval { ____Placeholder_xp_retval } xp_retval ;


 int GFP_KERNEL ;
 struct xpc_send_msg_slot_uv* kzalloc (size_t,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int xpNoMemory ;
 int xpSuccess ;
 int xpc_put_fifo_entry_uv (int *,int *) ;

__attribute__((used)) static enum xp_retval
xpc_allocate_send_msg_slot_uv(struct xpc_channel *ch)
{
 struct xpc_channel_uv *ch_uv = &ch->sn.uv;
 struct xpc_send_msg_slot_uv *msg_slot;
 unsigned long irq_flags;
 int nentries;
 int entry;
 size_t nbytes;

 for (nentries = ch->local_nentries; nentries > 0; nentries--) {
  nbytes = nentries * sizeof(struct xpc_send_msg_slot_uv);
  ch_uv->send_msg_slots = kzalloc(nbytes, GFP_KERNEL);
  if (ch_uv->send_msg_slots == ((void*)0))
   continue;

  for (entry = 0; entry < nentries; entry++) {
   msg_slot = &ch_uv->send_msg_slots[entry];

   msg_slot->msg_slot_number = entry;
   xpc_put_fifo_entry_uv(&ch_uv->msg_slot_free_list,
           &msg_slot->next);
  }

  spin_lock_irqsave(&ch->lock, irq_flags);
  if (nentries < ch->local_nentries)
   ch->local_nentries = nentries;
  spin_unlock_irqrestore(&ch->lock, irq_flags);
  return xpSuccess;
 }

 return xpNoMemory;
}
