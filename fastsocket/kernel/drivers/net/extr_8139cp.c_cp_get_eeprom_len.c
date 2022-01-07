
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct cp_private {int lock; int regs; } ;


 struct cp_private* netdev_priv (struct net_device*) ;
 int read_eeprom (int ,int ,int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int cp_get_eeprom_len(struct net_device *dev)
{
 struct cp_private *cp = netdev_priv(dev);
 int size;

 spin_lock_irq(&cp->lock);
 size = read_eeprom(cp->regs, 0, 8) == 0x8129 ? 256 : 128;
 spin_unlock_irq(&cp->lock);

 return size;
}
