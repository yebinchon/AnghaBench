
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tg3 {int coal; } ;
struct net_device {int dummy; } ;
struct ethtool_coalesce {int dummy; } ;


 int memcpy (struct ethtool_coalesce*,int *,int) ;
 struct tg3* netdev_priv (struct net_device*) ;

__attribute__((used)) static int tg3_get_coalesce(struct net_device *dev, struct ethtool_coalesce *ec)
{
 struct tg3 *tp = netdev_priv(dev);

 memcpy(ec, &tp->coal, sizeof(*ec));
 return 0;
}
