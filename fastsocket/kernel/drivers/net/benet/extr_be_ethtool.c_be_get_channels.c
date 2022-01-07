
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_channels {int max_combined; int combined_count; } ;
struct be_adapter {int num_evt_qs; } ;


 int be_max_qs (struct be_adapter*) ;
 struct be_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static void be_get_channels(struct net_device *netdev,
       struct ethtool_channels *ch)
{
 struct be_adapter *adapter = netdev_priv(netdev);

 ch->combined_count = adapter->num_evt_qs;
 ch->max_combined = be_max_qs(adapter);
}
