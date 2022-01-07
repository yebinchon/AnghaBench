
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct net_device {int mtu; int features; } ;
struct jme_adapter {int flags; } ;


 int JME_FLAG_TSO ;
 int NETIF_F_TSO ;
 int NETIF_F_TSO6 ;
 int clear_bit (int ,int *) ;
 struct jme_adapter* netdev_priv (struct net_device*) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int
jme_set_tso(struct net_device *netdev, u32 on)
{
 struct jme_adapter *jme = netdev_priv(netdev);

 if (on) {
  set_bit(JME_FLAG_TSO, &jme->flags);
  if (netdev->mtu <= 1900)
   netdev->features |= NETIF_F_TSO | NETIF_F_TSO6;
 } else {
  clear_bit(JME_FLAG_TSO, &jme->flags);
  netdev->features &= ~(NETIF_F_TSO | NETIF_F_TSO6);
 }

 return 0;
}
