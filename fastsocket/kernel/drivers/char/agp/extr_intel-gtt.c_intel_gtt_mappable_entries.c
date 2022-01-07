
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {int pcidev; int bridge_dev; } ;


 int I810_GFX_MEM_WIN_32M ;
 int I810_GFX_MEM_WIN_SIZE ;
 int I810_SMRAM_MISCC ;
 int I830_GMCH_CTRL ;
 int I830_GMCH_MEM_64M ;
 int I830_GMCH_MEM_MASK ;
 int INTEL_GTT_GEN ;
 unsigned int MB (int) ;
 unsigned int PAGE_SHIFT ;
 TYPE_1__ intel_private ;
 int pci_read_config_dword (int ,int ,int*) ;
 int pci_read_config_word (int ,int ,int*) ;
 unsigned int pci_resource_len (int ,int) ;

__attribute__((used)) static unsigned int intel_gtt_mappable_entries(void)
{
 unsigned int aperture_size;

 if (INTEL_GTT_GEN == 1) {
  u32 smram_miscc;

  pci_read_config_dword(intel_private.bridge_dev,
          I810_SMRAM_MISCC, &smram_miscc);

  if ((smram_miscc & I810_GFX_MEM_WIN_SIZE)
    == I810_GFX_MEM_WIN_32M)
   aperture_size = MB(32);
  else
   aperture_size = MB(64);
 } else if (INTEL_GTT_GEN == 2) {
  u16 gmch_ctrl;

  pci_read_config_word(intel_private.bridge_dev,
         I830_GMCH_CTRL, &gmch_ctrl);

  if ((gmch_ctrl & I830_GMCH_MEM_MASK) == I830_GMCH_MEM_64M)
   aperture_size = MB(64);
  else
   aperture_size = MB(128);
 } else {

  aperture_size = pci_resource_len(intel_private.pcidev, 2);
 }

 return aperture_size >> PAGE_SHIFT;
}
