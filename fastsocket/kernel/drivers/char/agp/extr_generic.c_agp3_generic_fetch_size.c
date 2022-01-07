
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct aper_size_info_16 {scalar_t__ size_value; int size; } ;
struct TYPE_4__ {int aperture_size_idx; void* current_size; void* previous_size; TYPE_1__* driver; scalar_t__ capndx; int dev; } ;
struct TYPE_3__ {int num_aperture_sizes; int aperture_sizes; } ;


 scalar_t__ AGPAPSIZE ;
 struct aper_size_info_16* A_SIZE_16 (int ) ;
 TYPE_2__* agp_bridge ;
 int pci_read_config_word (int ,scalar_t__,scalar_t__*) ;

int agp3_generic_fetch_size(void)
{
 u16 temp_size;
 int i;
 struct aper_size_info_16 *values;

 pci_read_config_word(agp_bridge->dev, agp_bridge->capndx+AGPAPSIZE, &temp_size);
 values = A_SIZE_16(agp_bridge->driver->aperture_sizes);

 for (i = 0; i < agp_bridge->driver->num_aperture_sizes; i++) {
  if (temp_size == values[i].size_value) {
   agp_bridge->previous_size =
    agp_bridge->current_size = (void *) (values + i);

   agp_bridge->aperture_size_idx = i;
   return values[i].size;
  }
 }
 return 0;
}
