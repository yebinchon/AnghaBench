
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct myri10ge_priv {char* fw_version; int pdev; } ;
struct ethtool_drvinfo {int bus_info; int fw_version; int version; int driver; } ;


 char* MYRI10GE_VERSION_STR ;
 struct myri10ge_priv* netdev_priv (struct net_device*) ;
 char* pci_name (int ) ;
 int strlcpy (int ,char*,int) ;

__attribute__((used)) static void
myri10ge_get_drvinfo(struct net_device *netdev, struct ethtool_drvinfo *info)
{
 struct myri10ge_priv *mgp = netdev_priv(netdev);

 strlcpy(info->driver, "myri10ge", sizeof(info->driver));
 strlcpy(info->version, MYRI10GE_VERSION_STR, sizeof(info->version));
 strlcpy(info->fw_version, mgp->fw_version, sizeof(info->fw_version));
 strlcpy(info->bus_info, pci_name(mgp->pdev), sizeof(info->bus_info));
}
