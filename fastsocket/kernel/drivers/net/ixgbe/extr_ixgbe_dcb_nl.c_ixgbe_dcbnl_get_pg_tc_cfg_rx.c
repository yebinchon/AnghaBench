
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct net_device {int dummy; } ;
struct TYPE_6__ {TYPE_2__* tc_config; } ;
struct ixgbe_adapter {TYPE_3__ dcb_cfg; } ;
struct TYPE_5__ {TYPE_1__* path; } ;
struct TYPE_4__ {int up_to_tc_bitmap; int bwg_percent; int bwg_id; int prio_type; } ;


 struct ixgbe_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static void ixgbe_dcbnl_get_pg_tc_cfg_rx(struct net_device *netdev, int tc,
                                         u8 *prio, u8 *bwg_id, u8 *bw_pct,
                                         u8 *up_map)
{
 struct ixgbe_adapter *adapter = netdev_priv(netdev);

 *prio = adapter->dcb_cfg.tc_config[tc].path[1].prio_type;
 *bwg_id = adapter->dcb_cfg.tc_config[tc].path[1].bwg_id;
 *bw_pct = adapter->dcb_cfg.tc_config[tc].path[1].bwg_percent;
 *up_map = adapter->dcb_cfg.tc_config[tc].path[1].up_to_tc_bitmap;
}
