
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct net_device {int dummy; } ;
struct enic {int csum_rx_enabled; } ;


 int EINVAL ;
 int ENIC_SETTING (struct enic*,int ) ;
 int RXCSUM ;
 struct enic* netdev_priv (struct net_device*) ;

__attribute__((used)) static int enic_set_rx_csum(struct net_device *netdev, u32 data)
{
 struct enic *enic = netdev_priv(netdev);

 if (data && !ENIC_SETTING(enic, RXCSUM))
  return -EINVAL;

 enic->csum_rx_enabled = !!data;

 return 0;
}
