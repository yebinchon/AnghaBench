
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pasemi_mac {int pdev; } ;
struct net_device {int dummy; } ;
struct ethtool_drvinfo {int bus_info; int fw_version; int version; int driver; } ;


 int memset (struct ethtool_drvinfo*,int ,int) ;
 struct pasemi_mac* netdev_priv (struct net_device*) ;
 char* pci_name (int ) ;
 int strcpy (int ,char*) ;
 int strncpy (int ,char*,int) ;

__attribute__((used)) static void
pasemi_mac_ethtool_get_drvinfo(struct net_device *netdev,
          struct ethtool_drvinfo *drvinfo)
{
 struct pasemi_mac *mac;
 mac = netdev_priv(netdev);


 memset(drvinfo, 0, sizeof(struct ethtool_drvinfo));
 strncpy(drvinfo->driver, "pasemi_mac", 12);
 strcpy(drvinfo->version, "N/A");
 strcpy(drvinfo->fw_version, "N/A");
 strncpy(drvinfo->bus_info, pci_name(mac->pdev), 32);
}
