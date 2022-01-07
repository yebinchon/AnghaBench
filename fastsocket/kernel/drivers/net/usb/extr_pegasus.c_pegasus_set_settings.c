
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ethtool_cmd {int dummy; } ;
struct TYPE_3__ {int mii; } ;
typedef TYPE_1__ pegasus_t ;


 int mii_ethtool_sset (int *,struct ethtool_cmd*) ;
 TYPE_1__* netdev_priv (struct net_device*) ;

__attribute__((used)) static int
pegasus_set_settings(struct net_device *dev, struct ethtool_cmd *ecmd)
{
 pegasus_t *pegasus = netdev_priv(dev);
 return mii_ethtool_sset(&pegasus->mii, ecmd);
}
