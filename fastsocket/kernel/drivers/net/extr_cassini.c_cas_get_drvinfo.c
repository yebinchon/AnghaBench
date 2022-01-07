
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_drvinfo {char* fw_version; int n_stats; scalar_t__ regdump_len; int bus_info; int version; int driver; } ;
struct cas {scalar_t__ casreg_len; int pdev; } ;


 scalar_t__ CAS_MAX_REGS ;
 int CAS_NUM_STAT_KEYS ;
 int DRV_MODULE_NAME ;
 int DRV_MODULE_VERSION ;
 int ETHTOOL_BUSINFO_LEN ;
 struct cas* netdev_priv (struct net_device*) ;
 int pci_name (int ) ;
 int strncpy (int ,int ,int ) ;

__attribute__((used)) static void cas_get_drvinfo(struct net_device *dev, struct ethtool_drvinfo *info)
{
 struct cas *cp = netdev_priv(dev);
 strncpy(info->driver, DRV_MODULE_NAME, ETHTOOL_BUSINFO_LEN);
 strncpy(info->version, DRV_MODULE_VERSION, ETHTOOL_BUSINFO_LEN);
 info->fw_version[0] = '\0';
 strncpy(info->bus_info, pci_name(cp->pdev), ETHTOOL_BUSINFO_LEN);
 info->regdump_len = cp->casreg_len < CAS_MAX_REGS ?
  cp->casreg_len : CAS_MAX_REGS;
 info->n_stats = CAS_NUM_STAT_KEYS;
}
