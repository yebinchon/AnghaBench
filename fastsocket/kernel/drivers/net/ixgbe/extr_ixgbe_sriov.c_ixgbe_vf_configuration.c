
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct ixgbe_adapter {TYPE_1__* vfinfo; } ;
struct TYPE_2__ {int vf_mac_addresses; } ;


 int e_info (int ,char*,unsigned int,unsigned char*) ;
 int memcpy (int ,unsigned char*,int) ;
 struct ixgbe_adapter* pci_get_drvdata (struct pci_dev*) ;
 int probe ;
 int random_ether_addr (unsigned char*) ;

int ixgbe_vf_configuration(struct pci_dev *pdev, unsigned int event_mask)
{
 unsigned char vf_mac_addr[6];
 struct ixgbe_adapter *adapter = pci_get_drvdata(pdev);
 unsigned int vfn = (event_mask & 0x3f);

 bool enable = ((event_mask & 0x10000000U) != 0);

 if (enable) {
  random_ether_addr(vf_mac_addr);
  e_info(probe, "IOV: VF %d is enabled MAC %pM\n",
         vfn, vf_mac_addr);




  memcpy(adapter->vfinfo[vfn].vf_mac_addresses, vf_mac_addr, 6);
 }

 return 0;
}
