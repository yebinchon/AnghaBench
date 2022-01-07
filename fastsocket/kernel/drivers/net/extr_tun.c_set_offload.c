
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {unsigned int features; } ;


 int EINVAL ;
 unsigned int NETIF_F_FRAGLIST ;
 unsigned int NETIF_F_HW_CSUM ;
 unsigned int NETIF_F_SG ;
 unsigned int NETIF_F_TSO ;
 unsigned int NETIF_F_TSO6 ;
 unsigned int NETIF_F_TSO_ECN ;
 unsigned int NETIF_F_UFO ;
 unsigned long TUN_F_CSUM ;
 unsigned long TUN_F_TSO4 ;
 unsigned long TUN_F_TSO6 ;
 unsigned long TUN_F_TSO_ECN ;
 unsigned long TUN_F_UFO ;
 unsigned int TUN_USER_FEATURES ;
 int netdev_features_change (struct net_device*) ;

__attribute__((used)) static int set_offload(struct net_device *dev, unsigned long arg)
{
 unsigned int old_features, features;

 old_features = dev->features;

 features = (old_features & ~(NETIF_F_SG | NETIF_F_FRAGLIST |
         TUN_USER_FEATURES));

 if (arg & TUN_F_CSUM) {
  features |= NETIF_F_HW_CSUM|NETIF_F_SG|NETIF_F_FRAGLIST;
  arg &= ~TUN_F_CSUM;

  if (arg & (TUN_F_TSO4|TUN_F_TSO6)) {
   if (arg & TUN_F_TSO_ECN) {
    features |= NETIF_F_TSO_ECN;
    arg &= ~TUN_F_TSO_ECN;
   }
   if (arg & TUN_F_TSO4)
    features |= NETIF_F_TSO;
   if (arg & TUN_F_TSO6)
    features |= NETIF_F_TSO6;
   arg &= ~(TUN_F_TSO4|TUN_F_TSO6);
  }

  if (arg & TUN_F_UFO) {
   features |= NETIF_F_UFO;
   arg &= ~TUN_F_UFO;
  }
 }



 if (arg)
  return -EINVAL;

 dev->features = features;
 if (old_features != dev->features)
  netdev_features_change(dev);

 return 0;
}
