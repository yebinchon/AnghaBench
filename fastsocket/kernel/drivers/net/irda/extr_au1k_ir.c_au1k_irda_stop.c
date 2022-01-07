
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct au1k_private {int timer; int * irlap; } ;


 int AU1000_IRDA_RX_INT ;
 int AU1000_IRDA_TX_INT ;
 int IR_CONFIG_1 ;
 int IR_CONFIG_2 ;
 int IR_INTERFACE_CONFIG ;
 int au_sync () ;
 int del_timer (int *) ;
 int free_irq (int ,struct net_device*) ;
 int irlap_close (int *) ;
 struct au1k_private* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int read_ir_reg (int ) ;
 int writel (int,int ) ;

__attribute__((used)) static int au1k_irda_stop(struct net_device *dev)
{
 struct au1k_private *aup = netdev_priv(dev);


 writel(read_ir_reg(IR_CONFIG_2) & ~(1<<8), IR_CONFIG_2);
 writel(0, IR_CONFIG_1);
 writel(0, IR_INTERFACE_CONFIG);
 au_sync();

 if (aup->irlap) {
  irlap_close(aup->irlap);
  aup->irlap = ((void*)0);
 }

 netif_stop_queue(dev);
 del_timer(&aup->timer);


 free_irq(AU1000_IRDA_TX_INT, dev);
 free_irq(AU1000_IRDA_RX_INT, dev);
 return 0;
}
