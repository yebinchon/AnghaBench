
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int* last_pause_ptr; int* hw_addr_ptr; char volatile* dma_ptr; int dma_offset; int dma_diff; int dma_high; scalar_t__ agpAddr; } ;
typedef TYPE_1__ drm_via_private_t ;


 int DRM_ERROR (char*,int,int,int) ;
 int HC_ParaType_PreCR ;
 int VIA_READ (int) ;
 int VIA_REG_TRANSET ;
 int VIA_REG_TRANSPACE ;
 int VIA_WRITE (int,int) ;
 int via_flush_write_combine () ;
 int via_get_dma (TYPE_1__*) ;

__attribute__((used)) static int via_hook_segment(drm_via_private_t *dev_priv,
       uint32_t pause_addr_hi, uint32_t pause_addr_lo,
       int no_pci_fire)
{
 int paused, count;
 volatile uint32_t *paused_at = dev_priv->last_pause_ptr;
 uint32_t reader, ptr;
 uint32_t diff;

 paused = 0;
 via_flush_write_combine();
 (void) *(volatile uint32_t *)(via_get_dma(dev_priv) - 1);

 *paused_at = pause_addr_lo;
 via_flush_write_combine();
 (void) *paused_at;

 reader = *(dev_priv->hw_addr_ptr);
 ptr = ((volatile char *)paused_at - dev_priv->dma_ptr) +
  dev_priv->dma_offset + (uint32_t) dev_priv->agpAddr + 4;

 dev_priv->last_pause_ptr = via_get_dma(dev_priv) - 1;
 diff = (uint32_t) (ptr - reader) - dev_priv->dma_diff;
 count = 10000000;
 while (diff == 0 && count--) {
  paused = (VIA_READ(0x41c) & 0x80000000);
  if (paused)
   break;
  reader = *(dev_priv->hw_addr_ptr);
  diff = (uint32_t) (ptr - reader) - dev_priv->dma_diff;
 }

 paused = VIA_READ(0x41c) & 0x80000000;

 if (paused && !no_pci_fire) {
  reader = *(dev_priv->hw_addr_ptr);
  diff = (uint32_t) (ptr - reader) - dev_priv->dma_diff;
  diff &= (dev_priv->dma_high - 1);
  if (diff != 0 && diff < (dev_priv->dma_high >> 1)) {
   DRM_ERROR("Paused at incorrect address. "
      "0x%08x, 0x%08x 0x%08x\n",
      ptr, reader, dev_priv->dma_diff);
  } else if (diff == 0) {






   VIA_WRITE(VIA_REG_TRANSET, (HC_ParaType_PreCR << 16));
   VIA_WRITE(VIA_REG_TRANSPACE, pause_addr_hi);
   VIA_WRITE(VIA_REG_TRANSPACE, pause_addr_lo);
   VIA_READ(VIA_REG_TRANSPACE);
  }
 }
 return paused;
}
