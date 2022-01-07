
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_ringparam {int tx_pending; scalar_t__ rx_jumbo_max_pending; scalar_t__ rx_mini_max_pending; int rx_pending; int tx_max_pending; int rx_max_pending; } ;
struct bnad {int txq_depth; int rxq_depth; } ;


 int BNAD_MAX_RXQ_DEPTH ;
 int BNAD_MAX_TXQ_DEPTH ;
 struct bnad* netdev_priv (struct net_device*) ;

__attribute__((used)) static void
bnad_get_ringparam(struct net_device *netdev,
     struct ethtool_ringparam *ringparam)
{
 struct bnad *bnad = netdev_priv(netdev);

 ringparam->rx_max_pending = BNAD_MAX_RXQ_DEPTH;
 ringparam->rx_mini_max_pending = 0;
 ringparam->rx_jumbo_max_pending = 0;
 ringparam->tx_max_pending = BNAD_MAX_TXQ_DEPTH;

 ringparam->rx_pending = bnad->rxq_depth;
 ringparam->rx_mini_max_pending = 0;
 ringparam->rx_jumbo_max_pending = 0;
 ringparam->tx_pending = bnad->txq_depth;
}
