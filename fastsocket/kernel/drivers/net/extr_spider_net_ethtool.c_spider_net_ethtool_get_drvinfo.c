
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spider_net_card {int pdev; } ;
struct net_device {int dummy; } ;
struct ethtool_drvinfo {int bus_info; int fw_version; int version; int driver; } ;


 int VERSION ;
 int memset (struct ethtool_drvinfo*,int ,int) ;
 struct spider_net_card* netdev_priv (struct net_device*) ;
 int pci_name (int ) ;
 int spider_net_driver_name ;
 int strcpy (int ,char*) ;
 int strncpy (int ,int ,int) ;

__attribute__((used)) static void
spider_net_ethtool_get_drvinfo(struct net_device *netdev,
          struct ethtool_drvinfo *drvinfo)
{
 struct spider_net_card *card;
 card = netdev_priv(netdev);


 memset(drvinfo, 0, sizeof(struct ethtool_drvinfo));
 strncpy(drvinfo->driver, spider_net_driver_name, 32);
 strncpy(drvinfo->version, VERSION, 32);
 strcpy(drvinfo->fw_version, "no information");
 strncpy(drvinfo->bus_info, pci_name(card->pdev), 32);
}
