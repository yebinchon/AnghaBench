
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct aper_size_info_8 {int size_value; } ;
struct TYPE_2__ {int gart_bus_addr; int gatt_bus_addr; int dev; int current_size; } ;


 int AGP_APBASE ;
 struct aper_size_info_8* A_SIZE_8 (int ) ;
 int INTEL_AGPCTRL ;
 int INTEL_APSIZE ;
 int INTEL_ATTBASE ;
 int INTEL_I820_ERRSTS ;
 int INTEL_I820_RDCR ;
 int PCI_BASE_ADDRESS_MEM_MASK ;
 TYPE_1__* agp_bridge ;
 int pci_read_config_byte (int ,int ,int*) ;
 int pci_read_config_dword (int ,int ,int*) ;
 int pci_write_config_byte (int ,int ,int) ;
 int pci_write_config_dword (int ,int ,int) ;
 int pci_write_config_word (int ,int ,int) ;

__attribute__((used)) static int intel_820_configure(void)
{
 u32 temp;
 u8 temp2;
 struct aper_size_info_8 *current_size;

 current_size = A_SIZE_8(agp_bridge->current_size);


 pci_write_config_byte(agp_bridge->dev, INTEL_APSIZE, current_size->size_value);


 pci_read_config_dword(agp_bridge->dev, AGP_APBASE, &temp);
 agp_bridge->gart_bus_addr = (temp & PCI_BASE_ADDRESS_MEM_MASK);


 pci_write_config_dword(agp_bridge->dev, INTEL_ATTBASE, agp_bridge->gatt_bus_addr);


 pci_write_config_dword(agp_bridge->dev, INTEL_AGPCTRL, 0x0000);




 pci_read_config_byte(agp_bridge->dev, INTEL_I820_RDCR, &temp2);
 pci_write_config_byte(agp_bridge->dev, INTEL_I820_RDCR, temp2 | (1 << 1));

 pci_write_config_word(agp_bridge->dev, INTEL_I820_ERRSTS, 0x001c);
 return 0;
}
