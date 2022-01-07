
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ethtool_drvinfo {char* fw_version; int regdump_len; int n_stats; int bus_info; int version; int driver; } ;
struct emac_instance {int cell_index; TYPE_2__* ofdev; } ;
struct TYPE_4__ {TYPE_1__* node; } ;
struct TYPE_3__ {char* full_name; } ;


 char* DRV_VERSION ;
 int emac_ethtool_get_regs_len (struct net_device*) ;
 int emac_ethtool_get_stats_count (struct net_device*) ;
 struct emac_instance* netdev_priv (struct net_device*) ;
 int sprintf (int ,char*,int,char*) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static void emac_ethtool_get_drvinfo(struct net_device *ndev,
         struct ethtool_drvinfo *info)
{
 struct emac_instance *dev = netdev_priv(ndev);

 strcpy(info->driver, "ibm_emac");
 strcpy(info->version, DRV_VERSION);
 info->fw_version[0] = '\0';
 sprintf(info->bus_info, "PPC 4xx EMAC-%d %s",
  dev->cell_index, dev->ofdev->node->full_name);
 info->n_stats = emac_ethtool_get_stats_count(ndev);
 info->regdump_len = emac_ethtool_get_regs_len(ndev);
}
