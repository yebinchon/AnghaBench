
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct lance_private {int irq; } ;


 int LE_C0_STOP ;
 int LE_CSR0 ;
 int WRITERAP (struct lance_private*,int ) ;
 int WRITERDP (struct lance_private*,int ) ;
 int free_irq (int ,struct net_device*) ;
 struct lance_private* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;

int lance_close (struct net_device *dev)
{
        struct lance_private *lp = netdev_priv(dev);

 netif_stop_queue (dev);


        WRITERAP(lp, LE_CSR0);
        WRITERDP(lp, LE_C0_STOP);

        free_irq(lp->irq, dev);

        return 0;
}
