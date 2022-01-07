
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {struct net_device* dev; } ;
struct net_device {char* name; } ;


 scalar_t__ NET_XMIT_DROP ;
 scalar_t__ dev_queue_xmit (struct sk_buff*) ;
 scalar_t__ net_ratelimit () ;
 int pr_warn (char*,char*,char*) ;
 struct sk_buff* skb_dequeue (int *) ;
 int skbtxq ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int txlock ;

__attribute__((used)) static int
tx(int id)
{
 struct sk_buff *skb;
 struct net_device *ifp;

 while ((skb = skb_dequeue(&skbtxq))) {
  spin_unlock_irq(&txlock);
  ifp = skb->dev;
  if (dev_queue_xmit(skb) == NET_XMIT_DROP && net_ratelimit())
   pr_warn("aoe: packet could not be sent on %s.  %s\n",
    ifp ? ifp->name : "netif",
    "consider increasing tx_queue_len");
  spin_lock_irq(&txlock);
 }
 return 0;
}
