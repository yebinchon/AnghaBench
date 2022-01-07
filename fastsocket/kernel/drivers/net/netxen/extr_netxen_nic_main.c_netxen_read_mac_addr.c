
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct pci_dev {int dev; } ;
struct TYPE_2__ {int revision_id; } ;
struct netxen_adapter {int mac_addr; TYPE_1__ ahw; struct pci_dev* pdev; struct net_device* netdev; } ;
struct net_device {unsigned char* dev_addr; int perm_addr; int addr_len; } ;


 int EIO ;
 scalar_t__ NX_IS_REVISION_P3 (int ) ;
 int dev_warn (int *,char*,unsigned char*) ;
 int is_valid_ether_addr (int ) ;
 int memcpy (int ,unsigned char*,int ) ;
 scalar_t__ netxen_get_flash_mac_addr (struct netxen_adapter*,int *) ;
 scalar_t__ netxen_p3_get_mac_addr (struct netxen_adapter*,int *) ;

__attribute__((used)) static int
netxen_read_mac_addr(struct netxen_adapter *adapter)
{
 int i;
 unsigned char *p;
 u64 mac_addr;
 struct net_device *netdev = adapter->netdev;
 struct pci_dev *pdev = adapter->pdev;

 if (NX_IS_REVISION_P3(adapter->ahw.revision_id)) {
  if (netxen_p3_get_mac_addr(adapter, &mac_addr) != 0)
   return -EIO;
 } else {
  if (netxen_get_flash_mac_addr(adapter, &mac_addr) != 0)
   return -EIO;
 }

 p = (unsigned char *)&mac_addr;
 for (i = 0; i < 6; i++)
  netdev->dev_addr[i] = *(p + 5 - i);

 memcpy(netdev->perm_addr, netdev->dev_addr, netdev->addr_len);
 memcpy(adapter->mac_addr, netdev->dev_addr, netdev->addr_len);



 if (!is_valid_ether_addr(netdev->perm_addr))
  dev_warn(&pdev->dev, "Bad MAC address %pM.\n", netdev->dev_addr);

 return 0;
}
