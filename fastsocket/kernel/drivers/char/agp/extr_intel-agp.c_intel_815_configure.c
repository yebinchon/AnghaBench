
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct aper_size_info_8 {int size_value; } ;
struct TYPE_7__ {int gatt_bus_addr; int gart_bus_addr; TYPE_1__* dev; int current_size; } ;
struct TYPE_6__ {int dev; } ;


 int AGP_APBASE ;
 struct aper_size_info_8* A_SIZE_8 (int ) ;
 int EINVAL ;
 int INTEL_815_APCONT ;
 int INTEL_815_ATTBASE_MASK ;
 int INTEL_AGPCTRL ;
 int INTEL_APSIZE ;
 int INTEL_ATTBASE ;
 int PCI_BASE_ADDRESS_MEM_MASK ;
 TYPE_5__* agp_bridge ;
 int dev_emerg (int *,char*) ;
 int pci_read_config_byte (TYPE_1__*,int ,int*) ;
 int pci_read_config_dword (TYPE_1__*,int ,int*) ;
 int pci_write_config_byte (TYPE_1__*,int ,int) ;
 int pci_write_config_dword (TYPE_1__*,int ,int) ;

__attribute__((used)) static int intel_815_configure(void)
{
 u32 temp, addr;
 u8 temp2;
 struct aper_size_info_8 *current_size;




 if (agp_bridge->gatt_bus_addr & INTEL_815_ATTBASE_MASK) {
  dev_emerg(&agp_bridge->dev->dev, "gatt bus addr too high");
  return -EINVAL;
 }

 current_size = A_SIZE_8(agp_bridge->current_size);


 pci_write_config_byte(agp_bridge->dev, INTEL_APSIZE,
   current_size->size_value);


 pci_read_config_dword(agp_bridge->dev, AGP_APBASE, &temp);
 agp_bridge->gart_bus_addr = (temp & PCI_BASE_ADDRESS_MEM_MASK);

 pci_read_config_dword(agp_bridge->dev, INTEL_ATTBASE, &addr);
 addr &= INTEL_815_ATTBASE_MASK;
 addr |= agp_bridge->gatt_bus_addr;
 pci_write_config_dword(agp_bridge->dev, INTEL_ATTBASE, addr);


 pci_write_config_dword(agp_bridge->dev, INTEL_AGPCTRL, 0x0000);


 pci_read_config_byte(agp_bridge->dev, INTEL_815_APCONT, &temp2);
 pci_write_config_byte(agp_bridge->dev, INTEL_815_APCONT, temp2 | (1 << 1));



 return 0;
}
