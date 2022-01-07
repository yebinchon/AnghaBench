
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_coalesce {int use_adaptive_tx_coalesce; int use_adaptive_rx_coalesce; int tx_coalesce_usecs_low; int tx_coalesce_usecs_high; int tx_coalesce_usecs; int rx_coalesce_usecs_low; int rx_coalesce_usecs_high; int rx_coalesce_usecs; } ;
struct be_eq_obj {int enable_aic; int min_eqd; int max_eqd; int cur_eqd; } ;
struct be_adapter {struct be_eq_obj* eq_obj; } ;


 struct be_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int be_get_coalesce(struct net_device *netdev,
      struct ethtool_coalesce *et)
{
 struct be_adapter *adapter = netdev_priv(netdev);
 struct be_eq_obj *eqo = &adapter->eq_obj[0];


 et->rx_coalesce_usecs = eqo->cur_eqd;
 et->rx_coalesce_usecs_high = eqo->max_eqd;
 et->rx_coalesce_usecs_low = eqo->min_eqd;

 et->tx_coalesce_usecs = eqo->cur_eqd;
 et->tx_coalesce_usecs_high = eqo->max_eqd;
 et->tx_coalesce_usecs_low = eqo->min_eqd;

 et->use_adaptive_rx_coalesce = eqo->enable_aic;
 et->use_adaptive_tx_coalesce = eqo->enable_aic;

 return 0;
}
