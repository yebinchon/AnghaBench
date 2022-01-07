
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stmmac_priv {int is_gmac; } ;
struct net_device {int dummy; } ;
struct ethtool_drvinfo {char* fw_version; int n_stats; int version; int driver; } ;


 int DRV_MODULE_VERSION ;
 int GMAC_ETHTOOL_NAME ;
 int MAC100_ETHTOOL_NAME ;
 int STMMAC_STATS_LEN ;
 struct stmmac_priv* netdev_priv (struct net_device*) ;
 int strcpy (int ,int ) ;

void stmmac_ethtool_getdrvinfo(struct net_device *dev,
          struct ethtool_drvinfo *info)
{
 struct stmmac_priv *priv = netdev_priv(dev);

 if (!priv->is_gmac)
  strcpy(info->driver, MAC100_ETHTOOL_NAME);
 else
  strcpy(info->driver, GMAC_ETHTOOL_NAME);

 strcpy(info->version, DRV_MODULE_VERSION);
 info->fw_version[0] = '\0';
 info->n_stats = STMMAC_STATS_LEN;
 return;
}
