
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_3__ {scalar_t__ dma_offset; scalar_t__* hw_addr_ptr; scalar_t__ dma_low; scalar_t__ dma_wrap; scalar_t__ agpAddr; } ;
typedef TYPE_1__ drm_via_private_t ;



__attribute__((used)) static uint32_t via_cmdbuf_lag(drm_via_private_t *dev_priv)
{
 uint32_t agp_base = dev_priv->dma_offset + (uint32_t) dev_priv->agpAddr;
 uint32_t hw_addr = *(dev_priv->hw_addr_ptr) - agp_base;

 return ((hw_addr <= dev_priv->dma_low) ?
  (dev_priv->dma_low - hw_addr) :
  (dev_priv->dma_wrap + dev_priv->dma_low - hw_addr));
}
