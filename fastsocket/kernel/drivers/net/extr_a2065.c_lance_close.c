
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct lance_regs {int rdp; int rap; } ;
struct lance_private {int multicast_timer; struct lance_regs* ll; } ;


 int IRQ_AMIGA_PORTS ;
 int LE_C0_STOP ;
 int LE_CSR0 ;
 int del_timer_sync (int *) ;
 int free_irq (int ,struct net_device*) ;
 struct lance_private* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;

__attribute__((used)) static int lance_close (struct net_device *dev)
{
 struct lance_private *lp = netdev_priv(dev);
 volatile struct lance_regs *ll = lp->ll;

 netif_stop_queue(dev);
 del_timer_sync(&lp->multicast_timer);


 ll->rap = LE_CSR0;
 ll->rdp = LE_C0_STOP;

 free_irq(IRQ_AMIGA_PORTS, dev);
 return 0;
}
