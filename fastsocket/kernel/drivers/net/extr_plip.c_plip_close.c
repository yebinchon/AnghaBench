
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct plip_local {int * skb; void* state; } ;
struct net_local {scalar_t__ port_owner; int pardev; int connection; scalar_t__ is_deferred; int killed_timer_cmp; int kill_timer; struct plip_local rcv_data; struct plip_local snd_data; } ;
struct net_device {int irq; } ;


 int DISABLE (int) ;
 int PAR_CONTROL (struct net_device*) ;
 int PAR_DATA (struct net_device*) ;
 int PLIP_CN_NONE ;
 void* PLIP_PK_DONE ;
 int atomic_set (int *,int) ;
 int dev_kfree_skb (int *) ;
 int init_completion (int *) ;
 int kfree_skb (int *) ;
 struct net_local* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int outb (int,int ) ;
 int parport_release (int ) ;
 int synchronize_irq (int) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static int
plip_close(struct net_device *dev)
{
 struct net_local *nl = netdev_priv(dev);
 struct plip_local *snd = &nl->snd_data;
 struct plip_local *rcv = &nl->rcv_data;

 netif_stop_queue (dev);
 DISABLE(dev->irq);
 synchronize_irq(dev->irq);

 if (dev->irq == -1)
 {
  init_completion(&nl->killed_timer_cmp);
  atomic_set (&nl->kill_timer, 1);
  wait_for_completion(&nl->killed_timer_cmp);
 }




 nl->is_deferred = 0;
 nl->connection = PLIP_CN_NONE;
 if (nl->port_owner) {
  parport_release(nl->pardev);
  nl->port_owner = 0;
 }

 snd->state = PLIP_PK_DONE;
 if (snd->skb) {
  dev_kfree_skb(snd->skb);
  snd->skb = ((void*)0);
 }
 rcv->state = PLIP_PK_DONE;
 if (rcv->skb) {
  kfree_skb(rcv->skb);
  rcv->skb = ((void*)0);
 }





 return 0;
}
