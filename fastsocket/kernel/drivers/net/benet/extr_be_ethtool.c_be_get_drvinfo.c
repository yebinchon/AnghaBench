
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_drvinfo {scalar_t__ eedump_len; scalar_t__ regdump_len; scalar_t__ testinfo_len; int bus_info; int fw_version; int version; int driver; } ;
struct be_adapter {char* fw_ver; char* fw_on_flash; int pdev; } ;


 char* DRV_NAME ;
 char* DRV_VER ;
 int FW_VER_LEN ;
 int memcmp (char*,char*,int ) ;
 struct be_adapter* netdev_priv (struct net_device*) ;
 char* pci_name (int ) ;
 int snprintf (int ,int,char*,char*,char*) ;
 int strlcpy (int ,char*,int) ;

__attribute__((used)) static void be_get_drvinfo(struct net_device *netdev,
    struct ethtool_drvinfo *drvinfo)
{
 struct be_adapter *adapter = netdev_priv(netdev);

 strlcpy(drvinfo->driver, DRV_NAME, sizeof(drvinfo->driver));
 strlcpy(drvinfo->version, DRV_VER, sizeof(drvinfo->version));
 if (!memcmp(adapter->fw_ver, adapter->fw_on_flash, FW_VER_LEN))
  strlcpy(drvinfo->fw_version, adapter->fw_ver,
   sizeof(drvinfo->fw_version));
 else
  snprintf(drvinfo->fw_version, sizeof(drvinfo->fw_version),
    "%s [%s]", adapter->fw_ver, adapter->fw_on_flash);

 strlcpy(drvinfo->bus_info, pci_name(adapter->pdev),
  sizeof(drvinfo->bus_info));
 drvinfo->testinfo_len = 0;
 drvinfo->regdump_len = 0;
 drvinfo->eedump_len = 0;
}
