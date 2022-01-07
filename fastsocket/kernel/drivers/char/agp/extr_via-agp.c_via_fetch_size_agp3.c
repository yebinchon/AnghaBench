
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct aper_size_info_16 {int size_value; int size; } ;
struct TYPE_4__ {int aperture_size_idx; void* current_size; void* previous_size; TYPE_1__* driver; int dev; } ;
struct TYPE_3__ {int num_aperture_sizes; int aperture_sizes; } ;


 struct aper_size_info_16* A_SIZE_16 (int ) ;
 int VIA_AGP3_APSIZE ;
 TYPE_2__* agp_bridge ;
 int pci_read_config_word (int ,int ,int*) ;

__attribute__((used)) static int via_fetch_size_agp3(void)
{
 int i;
 u16 temp;
 struct aper_size_info_16 *values;

 values = A_SIZE_16(agp_bridge->driver->aperture_sizes);
 pci_read_config_word(agp_bridge->dev, VIA_AGP3_APSIZE, &temp);
 temp &= 0xfff;

 for (i = 0; i < agp_bridge->driver->num_aperture_sizes; i++) {
  if (temp == values[i].size_value) {
   agp_bridge->previous_size =
    agp_bridge->current_size = (void *) (values + i);
   agp_bridge->aperture_size_idx = i;
   return values[i].size;
  }
 }
 return 0;
}
