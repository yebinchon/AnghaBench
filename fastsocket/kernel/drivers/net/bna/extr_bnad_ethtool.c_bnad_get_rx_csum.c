
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct bnad {int rx_csum; } ;


 struct bnad* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32
bnad_get_rx_csum(struct net_device *netdev)
{
 u32 rx_csum;
 struct bnad *bnad = netdev_priv(netdev);

 rx_csum = bnad->rx_csum;
 return rx_csum;
}
