
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rionet_private {TYPE_1__* mport; } ;
struct net_device {int dummy; } ;
struct ethtool_drvinfo {int bus_info; int fw_version; int version; int driver; } ;
struct TYPE_2__ {char* name; } ;


 char* DRV_NAME ;
 char* DRV_VERSION ;
 struct rionet_private* netdev_priv (struct net_device*) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static void rionet_get_drvinfo(struct net_device *ndev,
          struct ethtool_drvinfo *info)
{
 struct rionet_private *rnet = netdev_priv(ndev);

 strcpy(info->driver, DRV_NAME);
 strcpy(info->version, DRV_VERSION);
 strcpy(info->fw_version, "n/a");
 strcpy(info->bus_info, rnet->mport->name);
}
