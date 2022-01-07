
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xpnet_pending_msg {TYPE_1__* skb; int use_count; } ;
typedef enum xp_retval { ____Placeholder_xp_retval } xp_retval ;
struct TYPE_2__ {scalar_t__ head; } ;


 int DBUG_ON (int ) ;
 scalar_t__ atomic_dec_return (int *) ;
 int dev_dbg (int ,char*,void*,...) ;
 int dev_kfree_skb_any (TYPE_1__*) ;
 int kfree (struct xpnet_pending_msg*) ;
 int xpnet ;

__attribute__((used)) static void
xpnet_send_completed(enum xp_retval reason, short partid, int channel,
       void *__qm)
{
 struct xpnet_pending_msg *queued_msg = (struct xpnet_pending_msg *)__qm;

 DBUG_ON(queued_msg == ((void*)0));

 dev_dbg(xpnet, "message to %d notified with reason %d\n",
  partid, reason);

 if (atomic_dec_return(&queued_msg->use_count) == 0) {
  dev_dbg(xpnet, "all acks for skb->head=-x%p\n",
   (void *)queued_msg->skb->head);

  dev_kfree_skb_any(queued_msg->skb);
  kfree(queued_msg);
 }
}
