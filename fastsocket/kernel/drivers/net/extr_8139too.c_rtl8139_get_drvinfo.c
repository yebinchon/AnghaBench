
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8139_private {int regs_len; int pci_dev; } ;
struct net_device {int dummy; } ;
struct ethtool_drvinfo {int regdump_len; int bus_info; int version; int driver; } ;


 int DRV_NAME ;
 int DRV_VERSION ;
 struct rtl8139_private* netdev_priv (struct net_device*) ;
 int pci_name (int ) ;
 int strcpy (int ,int ) ;

__attribute__((used)) static void rtl8139_get_drvinfo(struct net_device *dev, struct ethtool_drvinfo *info)
{
 struct rtl8139_private *tp = netdev_priv(dev);
 strcpy(info->driver, DRV_NAME);
 strcpy(info->version, DRV_VERSION);
 strcpy(info->bus_info, pci_name(tp->pci_dev));
 info->regdump_len = tp->regs_len;
}
