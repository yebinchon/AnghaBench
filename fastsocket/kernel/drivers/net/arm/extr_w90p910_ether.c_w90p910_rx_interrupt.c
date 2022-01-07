
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w90p910_ether {struct platform_device* pdev; } ;
struct platform_device {int dev; } ;
struct net_device {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 unsigned int MISTA_RDU ;
 unsigned int MISTA_RXBERR ;
 int dev_err (int *,char*) ;
 struct w90p910_ether* netdev_priv (struct net_device*) ;
 int netdev_rx (struct net_device*) ;
 int w90p910_get_and_clear_int (struct net_device*,unsigned int*) ;
 int w90p910_reset_mac (struct net_device*) ;
 int w90p910_trigger_rx (struct net_device*) ;

__attribute__((used)) static irqreturn_t w90p910_rx_interrupt(int irq, void *dev_id)
{
 struct net_device *dev;
 struct w90p910_ether *ether;
 struct platform_device *pdev;
 unsigned int status;

 dev = dev_id;
 ether = netdev_priv(dev);
 pdev = ether->pdev;

 w90p910_get_and_clear_int(dev, &status);

 if (status & MISTA_RDU) {
  netdev_rx(dev);
  w90p910_trigger_rx(dev);

  return IRQ_HANDLED;
 } else if (status & MISTA_RXBERR) {
  dev_err(&pdev->dev, "emc rx bus error\n");
  w90p910_reset_mac(dev);
 }

 netdev_rx(dev);
 return IRQ_HANDLED;
}
