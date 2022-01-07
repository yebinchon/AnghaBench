
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sockaddr {int sa_data; } ;
struct net_device {int addr_len; int dev_addr; } ;
struct b44 {int lock; } ;


 int B44_RXCONFIG ;
 int EBUSY ;
 int EINVAL ;
 int RXCONFIG_CAM_ABSENT ;
 int __b44_set_mac_addr (struct b44*) ;
 int br32 (struct b44*,int ) ;
 int is_valid_ether_addr (int ) ;
 int memcpy (int ,int ,int ) ;
 struct b44* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int b44_set_mac_addr(struct net_device *dev, void *p)
{
 struct b44 *bp = netdev_priv(dev);
 struct sockaddr *addr = p;
 u32 val;

 if (netif_running(dev))
  return -EBUSY;

 if (!is_valid_ether_addr(addr->sa_data))
  return -EINVAL;

 memcpy(dev->dev_addr, addr->sa_data, dev->addr_len);

 spin_lock_irq(&bp->lock);

 val = br32(bp, B44_RXCONFIG);
 if (!(val & RXCONFIG_CAM_ABSENT))
  __b44_set_mac_addr(bp);

 spin_unlock_irq(&bp->lock);

 return 0;
}
