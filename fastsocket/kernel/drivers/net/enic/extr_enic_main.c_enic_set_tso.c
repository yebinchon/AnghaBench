
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct net_device {int features; } ;
struct enic {int dummy; } ;


 int EINVAL ;
 int ENIC_SETTING (struct enic*,int ) ;
 int NETIF_F_TSO ;
 int NETIF_F_TSO6 ;
 int NETIF_F_TSO_ECN ;
 int TSO ;
 struct enic* netdev_priv (struct net_device*) ;

__attribute__((used)) static int enic_set_tso(struct net_device *netdev, u32 data)
{
 struct enic *enic = netdev_priv(netdev);

 if (data && !ENIC_SETTING(enic, TSO))
  return -EINVAL;

 if (data)
  netdev->features |=
   NETIF_F_TSO | NETIF_F_TSO6 | NETIF_F_TSO_ECN;
 else
  netdev->features &=
   ~(NETIF_F_TSO | NETIF_F_TSO6 | NETIF_F_TSO_ECN);

 return 0;
}
