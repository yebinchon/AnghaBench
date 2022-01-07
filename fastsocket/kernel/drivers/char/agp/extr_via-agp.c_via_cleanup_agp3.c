
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct aper_size_info_16 {int size_value; } ;
struct TYPE_2__ {int dev; int previous_size; } ;


 struct aper_size_info_16* A_SIZE_16 (int ) ;
 int VIA_APSIZE ;
 TYPE_1__* agp_bridge ;
 int pci_write_config_byte (int ,int ,int ) ;

__attribute__((used)) static void via_cleanup_agp3(void)
{
 struct aper_size_info_16 *previous_size;

 previous_size = A_SIZE_16(agp_bridge->previous_size);
 pci_write_config_byte(agp_bridge->dev, VIA_APSIZE, previous_size->size_value);
}
