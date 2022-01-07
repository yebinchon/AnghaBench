
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_11__ ;


typedef int ulong ;
typedef int u_char ;
struct sk_buff {int len; int * data; } ;
struct net_device {int trans_start; } ;
struct concap_proto {TYPE_2__* pops; } ;
typedef int netdev_tx_t ;
struct TYPE_16__ {int flags; scalar_t__ dialwait_timer; scalar_t__ dialstarted; scalar_t__ dialtimeout; scalar_t__ dialwait; int pre_channel; int dialstate; scalar_t__ p_encap; int msn; int pre_device; int l3_proto; int l2_proto; scalar_t__* phone; TYPE_1__* netdev; } ;
typedef TYPE_3__ isdn_net_local ;
struct TYPE_15__ {int (* encap_and_xmit ) (struct concap_proto*,struct sk_buff*) ;} ;
struct TYPE_14__ {struct concap_proto* cprot; } ;
struct TYPE_13__ {int lock; scalar_t__ net_verbose; } ;


 int ISDN_NET_CONNECTED ;
 scalar_t__ ISDN_NET_DIALMODE (TYPE_3__) ;
 scalar_t__ ISDN_NET_DM_AUTO ;
 scalar_t__ ISDN_NET_ENCAP_SYNCPPP ;
 int ISDN_USAGE_NET ;
 int NETDEV_TX_BUSY ;
 int NETDEV_TX_OK ;
 TYPE_11__* dev ;
 int dev_kfree_skb (struct sk_buff*) ;
 int isdn_dumppkt (char*,int *,int ,int) ;
 int isdn_get_free_channel (int ,int ,int ,int ,int,int ) ;
 int isdn_net_adjust_hdr (struct sk_buff*,struct net_device*) ;
 int isdn_net_bind_channel (TYPE_3__*,int) ;
 int isdn_net_device_stop_queue (TYPE_3__*) ;
 int isdn_net_dial () ;
 int isdn_net_log_skb (struct sk_buff*,TYPE_3__*) ;
 int isdn_net_unbind_channel (TYPE_3__*) ;
 int isdn_net_unreachable (struct net_device*,struct sk_buff*,char*) ;
 int isdn_net_xmit (struct net_device*,struct sk_buff*) ;
 scalar_t__ isdn_ppp_autodial_filter (struct sk_buff*,TYPE_3__*) ;
 scalar_t__ isdn_ppp_bind (TYPE_3__*) ;
 int isdn_ppp_free (TYPE_3__*) ;
 int jiffies ;
 scalar_t__ netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int spin_lock_irqsave (int *,int ) ;
 int spin_unlock_irqrestore (int *,int ) ;
 int stub1 (struct concap_proto*,struct sk_buff*) ;
 scalar_t__ time_before (int ,scalar_t__) ;

__attribute__((used)) static netdev_tx_t
isdn_net_start_xmit(struct sk_buff *skb, struct net_device *ndev)
{
 isdn_net_local *lp = (isdn_net_local *) netdev_priv(ndev);
 {



  isdn_net_adjust_hdr(skb, ndev);





  if (!(lp->flags & ISDN_NET_CONNECTED)) {
   int chi;

   if (!(ISDN_NET_DIALMODE(*lp) == ISDN_NET_DM_AUTO)) {
    isdn_net_unreachable(ndev, skb, "dial rejected: interface not in dialmode `auto'");
    dev_kfree_skb(skb);
    return NETDEV_TX_OK;
   }
   if (lp->phone[1]) {
    ulong flags;

    if(lp->dialwait_timer <= 0)
     if(lp->dialstarted > 0 && lp->dialtimeout > 0 && time_before(jiffies, lp->dialstarted + lp->dialtimeout + lp->dialwait))
      lp->dialwait_timer = lp->dialstarted + lp->dialtimeout + lp->dialwait;

    if(lp->dialwait_timer > 0) {
     if(time_before(jiffies, lp->dialwait_timer)) {
      isdn_net_unreachable(ndev, skb, "dial rejected: retry-time not reached");
      dev_kfree_skb(skb);
      return NETDEV_TX_OK;
     } else
      lp->dialwait_timer = 0;
    }

    spin_lock_irqsave(&dev->lock, flags);
    if (((chi =
         isdn_get_free_channel(
        ISDN_USAGE_NET,
       lp->l2_proto,
       lp->l3_proto,
       lp->pre_device,
        lp->pre_channel,
       lp->msn)
       ) < 0) &&
     ((chi =
         isdn_get_free_channel(
        ISDN_USAGE_NET,
       lp->l2_proto,
       lp->l3_proto,
       lp->pre_device,
       lp->pre_channel^1,
       lp->msn)
       ) < 0)) {
     spin_unlock_irqrestore(&dev->lock, flags);
     isdn_net_unreachable(ndev, skb,
          "No channel");
     dev_kfree_skb(skb);
     return NETDEV_TX_OK;
    }

    if (dev->net_verbose)
     isdn_net_log_skb(skb, lp);
    lp->dialstate = 1;

    isdn_net_bind_channel(lp, chi);
    spin_unlock_irqrestore(&dev->lock, flags);
    isdn_net_dial();
    isdn_net_device_stop_queue(lp);
    return NETDEV_TX_BUSY;
   } else {
    isdn_net_unreachable(ndev, skb,
           "No phone number");
    dev_kfree_skb(skb);
    return NETDEV_TX_OK;
   }
  } else {

   ndev->trans_start = jiffies;
   if (!lp->dialstate) {

    int ret;
    ret = (isdn_net_xmit(ndev, skb));
    if(ret) netif_stop_queue(ndev);
    return ret;
   } else
    netif_stop_queue(ndev);
  }
 }
 return NETDEV_TX_BUSY;
}
