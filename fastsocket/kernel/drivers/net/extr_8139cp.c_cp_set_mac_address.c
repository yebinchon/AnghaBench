
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_data; } ;
struct net_device {scalar_t__ dev_addr; int addr_len; } ;
struct cp_private {int lock; } ;
typedef int __le32 ;


 int Cfg9346 ;
 int Cfg9346_Lock ;
 int Cfg9346_Unlock ;
 int EADDRNOTAVAIL ;
 scalar_t__ MAC0 ;
 int cpw32_f (scalar_t__,int ) ;
 int cpw8_f (int ,int ) ;
 int is_valid_ether_addr (int ) ;
 int le32_to_cpu (int ) ;
 int memcpy (scalar_t__,int ,int ) ;
 struct cp_private* netdev_priv (struct net_device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int cp_set_mac_address(struct net_device *dev, void *p)
{
 struct cp_private *cp = netdev_priv(dev);
 struct sockaddr *addr = p;

 if (!is_valid_ether_addr(addr->sa_data))
  return -EADDRNOTAVAIL;

 memcpy(dev->dev_addr, addr->sa_data, dev->addr_len);

 spin_lock_irq(&cp->lock);

 cpw8_f(Cfg9346, Cfg9346_Unlock);
 cpw32_f(MAC0 + 0, le32_to_cpu (*(__le32 *) (dev->dev_addr + 0)));
 cpw32_f(MAC0 + 4, le32_to_cpu (*(__le32 *) (dev->dev_addr + 4)));
 cpw8_f(Cfg9346, Cfg9346_Lock);

 spin_unlock_irq(&cp->lock);

 return 0;
}
