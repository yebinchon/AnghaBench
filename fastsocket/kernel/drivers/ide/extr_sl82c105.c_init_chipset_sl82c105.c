
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int dummy; } ;


 int CTRL_P0EN ;
 int CTRL_P0F16 ;
 int CTRL_P1F16 ;
 int DBG (char*) ;
 int pci_read_config_dword (struct pci_dev*,int,int*) ;
 int pci_write_config_dword (struct pci_dev*,int,int) ;

__attribute__((used)) static int init_chipset_sl82c105(struct pci_dev *dev)
{
 u32 val;

 DBG(("init_chipset_sl82c105()\n"));

 pci_read_config_dword(dev, 0x40, &val);
 val |= CTRL_P0EN | CTRL_P0F16 | CTRL_P1F16;
 pci_write_config_dword(dev, 0x40, val);

 return 0;
}
