
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct pci_dev {int dummy; } ;


 int NFORCE2_BOOTFSB ;
 int NFORCE2_PLLENABLE ;
 int NFORCE2_PLLREG ;
 int PCI_ANY_ID ;
 int PCI_VENDOR_ID_NVIDIA ;
 int nforce2_calc_fsb (int) ;
 struct pci_dev* nforce2_dev ;
 struct pci_dev* pci_get_subsys (int ,int,int ,int ,int *) ;
 int pci_read_config_byte (struct pci_dev*,int ,int *) ;
 int pci_read_config_dword (struct pci_dev*,int ,int*) ;

__attribute__((used)) static unsigned int nforce2_fsb_read(int bootfsb)
{
 struct pci_dev *nforce2_sub5;
 u32 fsb, temp = 0;


 nforce2_sub5 = pci_get_subsys(PCI_VENDOR_ID_NVIDIA, 0x01EF,
    PCI_ANY_ID, PCI_ANY_ID, ((void*)0));
 if (!nforce2_sub5)
  return 0;

 pci_read_config_dword(nforce2_sub5, NFORCE2_BOOTFSB, &fsb);
 fsb /= 1000000;


 pci_read_config_byte(nforce2_dev, NFORCE2_PLLENABLE, (u8 *)&temp);

 if (bootfsb || !temp)
  return fsb;


 pci_read_config_dword(nforce2_dev, NFORCE2_PLLREG, &temp);
 fsb = nforce2_calc_fsb(temp);

 return fsb;
}
