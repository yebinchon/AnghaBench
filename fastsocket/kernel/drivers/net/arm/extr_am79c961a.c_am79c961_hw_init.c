
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int base_addr; } ;
struct dev_priv {int chip_lock; } ;


 int CSR0 ;
 int CSR0_STOP ;
 int CSR3 ;
 int CSR3_MASKALL ;
 int am79c961_ramtest (struct net_device*,int) ;
 struct dev_priv* netdev_priv (struct net_device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int write_rreg (int ,int ,int ) ;

__attribute__((used)) static int
am79c961_hw_init(struct net_device *dev)
{
 struct dev_priv *priv = netdev_priv(dev);

 spin_lock_irq(&priv->chip_lock);
 write_rreg (dev->base_addr, CSR0, CSR0_STOP);
 write_rreg (dev->base_addr, CSR3, CSR3_MASKALL);
 spin_unlock_irq(&priv->chip_lock);

 am79c961_ramtest(dev, 0x66);
 am79c961_ramtest(dev, 0x99);

 return 0;
}
