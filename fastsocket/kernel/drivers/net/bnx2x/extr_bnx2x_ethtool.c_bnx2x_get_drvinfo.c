
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ethtool_drvinfo {int regdump_len; int eedump_len; int testinfo_len; int n_stats; int bus_info; int fw_version; int version; int driver; } ;
struct TYPE_2__ {int flash_size; } ;
struct bnx2x {TYPE_1__ common; int pdev; } ;


 int BNX2X_NUM_STATS ;
 int BNX2X_NUM_TESTS (struct bnx2x*) ;
 int DRV_MODULE_NAME ;
 int DRV_MODULE_VERSION ;
 int bnx2x_fill_fw_str (struct bnx2x*,int ,int) ;
 int bnx2x_get_regs_len (struct net_device*) ;
 struct bnx2x* netdev_priv (struct net_device*) ;
 int pci_name (int ) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void bnx2x_get_drvinfo(struct net_device *dev,
         struct ethtool_drvinfo *info)
{
 struct bnx2x *bp = netdev_priv(dev);

 strlcpy(info->driver, DRV_MODULE_NAME, sizeof(info->driver));
 strlcpy(info->version, DRV_MODULE_VERSION, sizeof(info->version));

 bnx2x_fill_fw_str(bp, info->fw_version, sizeof(info->fw_version));

 strlcpy(info->bus_info, pci_name(bp->pdev), sizeof(info->bus_info));
 info->n_stats = BNX2X_NUM_STATS;
 info->testinfo_len = BNX2X_NUM_TESTS(bp);
 info->eedump_len = bp->common.flash_size;
 info->regdump_len = bnx2x_get_regs_len(dev);
}
