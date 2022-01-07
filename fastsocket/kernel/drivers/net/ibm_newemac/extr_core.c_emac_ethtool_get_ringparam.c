
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_ringparam {int tx_pending; int tx_max_pending; int rx_pending; int rx_max_pending; } ;


 int NUM_RX_BUFF ;
 int NUM_TX_BUFF ;

__attribute__((used)) static void emac_ethtool_get_ringparam(struct net_device *ndev,
           struct ethtool_ringparam *rp)
{
 rp->rx_max_pending = rp->rx_pending = NUM_RX_BUFF;
 rp->tx_max_pending = rp->tx_pending = NUM_TX_BUFF;
}
