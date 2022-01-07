
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tulip_private {int csr12_shadow; scalar_t__ base_addr; int lock; } ;
struct net_device {int dummy; } ;


 scalar_t__ CSR12 ;
 int ioread32 (scalar_t__) ;
 int iowrite32 (int,scalar_t__) ;
 struct tulip_private* netdev_priv (struct net_device*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tulip_check_duplex (struct net_device*) ;

__attribute__((used)) static inline unsigned int phy_interrupt (struct net_device *dev)
{
 return 0;
}
