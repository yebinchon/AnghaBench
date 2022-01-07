
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct net_device {int mtu; int features; } ;
struct jme_adapter {int flags; } ;


 int JME_FLAG_TXCSUM ;
 int NETIF_F_HW_CSUM ;
 int clear_bit (int ,int *) ;
 struct jme_adapter* netdev_priv (struct net_device*) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int
jme_set_tx_csum(struct net_device *netdev, u32 on)
{
 struct jme_adapter *jme = netdev_priv(netdev);

 if (on) {
  set_bit(JME_FLAG_TXCSUM, &jme->flags);
  if (netdev->mtu <= 1900)
   netdev->features |= NETIF_F_HW_CSUM;
 } else {
  clear_bit(JME_FLAG_TXCSUM, &jme->flags);
  netdev->features &= ~NETIF_F_HW_CSUM;
 }

 return 0;
}
