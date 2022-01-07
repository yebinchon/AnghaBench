
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct aper_size_info_8 {int size_value; } ;
struct TYPE_2__ {int dev; int previous_size; } ;


 struct aper_size_info_8* A_SIZE_8 (int ) ;
 int INTEL_APSIZE ;
 int INTEL_NBXCFG ;
 TYPE_1__* agp_bridge ;
 int pci_read_config_word (int ,int ,int*) ;
 int pci_write_config_byte (int ,int ,int ) ;
 int pci_write_config_word (int ,int ,int) ;

__attribute__((used)) static void intel_8xx_cleanup(void)
{
 u16 temp;
 struct aper_size_info_8 *previous_size;

 previous_size = A_SIZE_8(agp_bridge->previous_size);
 pci_read_config_word(agp_bridge->dev, INTEL_NBXCFG, &temp);
 pci_write_config_word(agp_bridge->dev, INTEL_NBXCFG, temp & ~(1 << 9));
 pci_write_config_byte(agp_bridge->dev, INTEL_APSIZE, previous_size->size_value);
}
