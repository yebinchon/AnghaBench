
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_drvinfo {scalar_t__ eedump_len; scalar_t__ regdump_len; scalar_t__ testinfo_len; int n_stats; int bus_info; int fw_version; int version; int driver; } ;
struct bdx_priv {scalar_t__ stats_flag; int pdev; } ;


 int ARRAY_SIZE (int ) ;
 char* BDX_DRV_NAME ;
 char* BDX_DRV_VERSION ;
 int bdx_stat_names ;
 struct bdx_priv* netdev_priv (struct net_device*) ;
 char* pci_name (int ) ;
 int strlcat (int ,char*,int) ;

__attribute__((used)) static void
bdx_get_drvinfo(struct net_device *netdev, struct ethtool_drvinfo *drvinfo)
{
 struct bdx_priv *priv = netdev_priv(netdev);

 strlcat(drvinfo->driver, BDX_DRV_NAME, sizeof(drvinfo->driver));
 strlcat(drvinfo->version, BDX_DRV_VERSION, sizeof(drvinfo->version));
 strlcat(drvinfo->fw_version, "N/A", sizeof(drvinfo->fw_version));
 strlcat(drvinfo->bus_info, pci_name(priv->pdev),
  sizeof(drvinfo->bus_info));

 drvinfo->n_stats = ((priv->stats_flag) ? ARRAY_SIZE(bdx_stat_names) : 0);
 drvinfo->testinfo_len = 0;
 drvinfo->regdump_len = 0;
 drvinfo->eedump_len = 0;
}
