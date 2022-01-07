
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct aper_size_info_32 {int size_value; } ;
struct TYPE_2__ {int dev; int previous_size; } ;


 int ALI_ATTBASE ;
 int ALI_TAGCTRL ;
 int ALI_TLBCTRL ;
 struct aper_size_info_32* A_SIZE_32 (int ) ;
 TYPE_1__* agp_bridge ;
 int pci_read_config_dword (int ,int ,int*) ;
 int pci_write_config_dword (int ,int ,int) ;

__attribute__((used)) static void ali_cleanup(void)
{
 struct aper_size_info_32 *previous_size;
 u32 temp;

 previous_size = A_SIZE_32(agp_bridge->previous_size);

 pci_read_config_dword(agp_bridge->dev, ALI_TLBCTRL, &temp);

 pci_write_config_dword(agp_bridge->dev, ALI_TAGCTRL,
   ((temp & 0xffffff00) | 0x00000001|0x00000002));

 pci_read_config_dword(agp_bridge->dev, ALI_ATTBASE, &temp);
 pci_write_config_dword(agp_bridge->dev, ALI_ATTBASE,
   ((temp & 0x00000ff0) | previous_size->size_value));
}
