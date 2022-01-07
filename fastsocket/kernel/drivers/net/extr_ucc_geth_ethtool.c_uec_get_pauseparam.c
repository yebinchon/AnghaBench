
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ucc_geth_private {TYPE_2__* ug_info; TYPE_1__* phydev; } ;
struct net_device {int dummy; } ;
struct ethtool_pauseparam {int rx_pause; int tx_pause; int autoneg; } ;
struct TYPE_4__ {scalar_t__ transmitFlowControl; scalar_t__ receiveFlowControl; } ;
struct TYPE_3__ {int autoneg; } ;


 struct ucc_geth_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static void
uec_get_pauseparam(struct net_device *netdev,
                     struct ethtool_pauseparam *pause)
{
 struct ucc_geth_private *ugeth = netdev_priv(netdev);

 pause->autoneg = ugeth->phydev->autoneg;

 if (ugeth->ug_info->receiveFlowControl)
  pause->rx_pause = 1;
 if (ugeth->ug_info->transmitFlowControl)
  pause->tx_pause = 1;
}
