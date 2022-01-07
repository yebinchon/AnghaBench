
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ucc_geth_private {TYPE_1__* ug_info; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int statisticsMode; } ;


 int EOPNOTSUPP ;

 int UCC_GETH_STATISTICS_GATHERING_MODE_FIRMWARE_RX ;
 int UCC_GETH_STATISTICS_GATHERING_MODE_FIRMWARE_TX ;
 int UCC_GETH_STATISTICS_GATHERING_MODE_HARDWARE ;
 int UEC_HW_STATS_LEN ;
 int UEC_RX_FW_STATS_LEN ;
 int UEC_TX_FW_STATS_LEN ;
 struct ucc_geth_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static int uec_get_sset_count(struct net_device *netdev, int sset)
{
 struct ucc_geth_private *ugeth = netdev_priv(netdev);
 u32 stats_mode = ugeth->ug_info->statisticsMode;
 int len = 0;

 switch (sset) {
 case 128:
  if (stats_mode & UCC_GETH_STATISTICS_GATHERING_MODE_HARDWARE)
   len += UEC_HW_STATS_LEN;
  if (stats_mode & UCC_GETH_STATISTICS_GATHERING_MODE_FIRMWARE_TX)
   len += UEC_TX_FW_STATS_LEN;
  if (stats_mode & UCC_GETH_STATISTICS_GATHERING_MODE_FIRMWARE_RX)
   len += UEC_RX_FW_STATS_LEN;

  return len;

 default:
  return -EOPNOTSUPP;
 }
}
