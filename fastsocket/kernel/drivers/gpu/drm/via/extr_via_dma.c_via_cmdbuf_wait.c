
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_3__ {scalar_t__ dma_offset; scalar_t__* hw_addr_ptr; scalar_t__ dma_low; scalar_t__ agpAddr; } ;
typedef TYPE_1__ drm_via_private_t ;


 int DRM_ERROR (char*,scalar_t__,scalar_t__,scalar_t__) ;
 int msleep (int) ;

__attribute__((used)) static inline int
via_cmdbuf_wait(drm_via_private_t *dev_priv, unsigned int size)
{
 uint32_t agp_base = dev_priv->dma_offset + (uint32_t) dev_priv->agpAddr;
 uint32_t cur_addr, hw_addr, next_addr;
 volatile uint32_t *hw_addr_ptr;
 uint32_t count;
 hw_addr_ptr = dev_priv->hw_addr_ptr;
 cur_addr = dev_priv->dma_low;
 next_addr = cur_addr + size + 512 * 1024;
 count = 1000000;
 do {
  hw_addr = *hw_addr_ptr - agp_base;
  if (count-- == 0) {
   DRM_ERROR
       ("via_cmdbuf_wait timed out hw %x cur_addr %x next_addr %x\n",
        hw_addr, cur_addr, next_addr);
   return -1;
  }
  if ((cur_addr < hw_addr) && (next_addr >= hw_addr))
   msleep(1);
 } while ((cur_addr < hw_addr) && (next_addr >= hw_addr));
 return 0;
}
