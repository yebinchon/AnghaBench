
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ql_adapter {int wol; TYPE_1__* pdev; } ;
struct net_device {int dummy; } ;
struct ethtool_wolinfo {int wolopts; int supported; } ;
struct TYPE_2__ {unsigned short subsystem_device; } ;


 unsigned short QLGE_MEZZ_SSYS_ID_068 ;
 unsigned short QLGE_MEZZ_SSYS_ID_180 ;
 int WAKE_MAGIC ;
 struct ql_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static void ql_get_wol(struct net_device *ndev, struct ethtool_wolinfo *wol)
{
 struct ql_adapter *qdev = netdev_priv(ndev);
 unsigned short ssys_dev = qdev->pdev->subsystem_device;


 if (ssys_dev == QLGE_MEZZ_SSYS_ID_068 ||
   ssys_dev == QLGE_MEZZ_SSYS_ID_180) {
  wol->supported = WAKE_MAGIC;
  wol->wolopts = qdev->wol;
 }
}
