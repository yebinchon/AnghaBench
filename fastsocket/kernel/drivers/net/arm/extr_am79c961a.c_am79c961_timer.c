
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int name; int base_addr; } ;
struct dev_priv {int timer; } ;


 int ISALED0 ;
 unsigned int ISALED0_LNKST ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int) ;
 struct dev_priv* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 unsigned int netif_carrier_ok (struct net_device*) ;
 int netif_carrier_on (struct net_device*) ;
 int printk (char*,int ) ;
 unsigned int read_ireg (int ,int ) ;

__attribute__((used)) static void am79c961_timer(unsigned long data)
{
 struct net_device *dev = (struct net_device *)data;
 struct dev_priv *priv = netdev_priv(dev);
 unsigned int lnkstat, carrier;

 lnkstat = read_ireg(dev->base_addr, ISALED0) & ISALED0_LNKST;
 carrier = netif_carrier_ok(dev);

 if (lnkstat && !carrier) {
  netif_carrier_on(dev);
  printk("%s: link up\n", dev->name);
 } else if (!lnkstat && carrier) {
  netif_carrier_off(dev);
  printk("%s: link down\n", dev->name);
 }

 mod_timer(&priv->timer, jiffies + msecs_to_jiffies(500));
}
