
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_wolinfo {int dummy; } ;


 int EOPNOTSUPP ;

__attribute__((used)) static int igbvf_set_wol(struct net_device *netdev,
                         struct ethtool_wolinfo *wol)
{
 return -EOPNOTSUPP;
}
