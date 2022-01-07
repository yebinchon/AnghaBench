
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_flash {int data; } ;
struct be_adapter {int dummy; } ;


 int ETHTOOL_FLASH_MAX_FILENAME ;
 int be_load_fw (struct be_adapter*,char*) ;
 struct be_adapter* netdev_priv (struct net_device*) ;
 int strcpy (char*,int ) ;

__attribute__((used)) static int
be_do_flash(struct net_device *netdev, struct ethtool_flash *efl)
{
 struct be_adapter *adapter = netdev_priv(netdev);
 char file_name[ETHTOOL_FLASH_MAX_FILENAME];

 file_name[ETHTOOL_FLASH_MAX_FILENAME - 1] = 0;
 strcpy(file_name, efl->data);

 return be_load_fw(adapter, file_name);
}
