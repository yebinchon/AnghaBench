
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {int dma_offset; int dma_low; scalar_t__ agpAddr; } ;
typedef TYPE_1__ drm_via_private_t ;


 int CMDBUF_ALIGNMENT_MASK ;
 int CMDBUF_ALIGNMENT_SIZE ;
 int HC_HAGPBpID_MASK ;
 int HC_HAGPBpL_MASK ;
 int HC_HEADER2 ;
 int HC_ParaType_PreCR ;
 int HC_SubA_HAGPBpH ;
 int HC_SubA_HAGPBpL ;
 int VIA_OUT_RING_QW (int,int) ;
 int VIA_REG_TRANSET ;
 int VIA_REG_TRANSPACE ;
 int* via_align_buffer (TYPE_1__*,int*,int) ;
 int via_cmdbuf_wait (TYPE_1__*,int) ;
 int* via_get_dma (TYPE_1__*) ;

__attribute__((used)) static uint32_t *via_align_cmd(drm_via_private_t *dev_priv, uint32_t cmd_type,
          uint32_t addr, uint32_t *cmd_addr_hi,
          uint32_t *cmd_addr_lo, int skip_wait)
{
 uint32_t agp_base;
 uint32_t cmd_addr, addr_lo, addr_hi;
 uint32_t *vb;
 uint32_t qw_pad_count;

 if (!skip_wait)
  via_cmdbuf_wait(dev_priv, 2 * CMDBUF_ALIGNMENT_SIZE);

 vb = via_get_dma(dev_priv);
 VIA_OUT_RING_QW(HC_HEADER2 | ((VIA_REG_TRANSET >> 2) << 12) |
   (VIA_REG_TRANSPACE >> 2), HC_ParaType_PreCR << 16);
 agp_base = dev_priv->dma_offset + (uint32_t) dev_priv->agpAddr;
 qw_pad_count = (CMDBUF_ALIGNMENT_SIZE >> 3) -
     ((dev_priv->dma_low & CMDBUF_ALIGNMENT_MASK) >> 3);

 cmd_addr = (addr) ? addr :
     agp_base + dev_priv->dma_low - 8 + (qw_pad_count << 3);
 addr_lo = ((HC_SubA_HAGPBpL << 24) | (cmd_type & HC_HAGPBpID_MASK) |
     (cmd_addr & HC_HAGPBpL_MASK));
 addr_hi = ((HC_SubA_HAGPBpH << 24) | (cmd_addr >> 24));

 vb = via_align_buffer(dev_priv, vb, qw_pad_count - 1);
 VIA_OUT_RING_QW(*cmd_addr_hi = addr_hi, *cmd_addr_lo = addr_lo);
 return vb;
}
