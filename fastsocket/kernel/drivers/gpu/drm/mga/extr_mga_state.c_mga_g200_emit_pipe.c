
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int warp_pipe; } ;
typedef TYPE_1__ drm_mga_sarea_t ;
struct TYPE_5__ {int* warp_pipe_phys; int wagp_enable; TYPE_1__* sarea_priv; } ;
typedef TYPE_2__ drm_mga_private_t ;


 int ADVANCE_DMA () ;
 int BEGIN_DMA (int) ;
 int DMA_BLOCK (int ,int,int ,int,int ,int,int ,int) ;
 int DMA_LOCALS ;
 int MGA_DMAPAD ;
 int MGA_WFLAG ;
 int MGA_WIADDR ;
 int MGA_WMODE_START ;
 int MGA_WMODE_SUSPEND ;
 int MGA_WR24 ;
 int MGA_WR25 ;
 int MGA_WR34 ;
 int MGA_WR42 ;
 int MGA_WR60 ;
 int MGA_WVRTXSZ ;

__attribute__((used)) static __inline__ void mga_g200_emit_pipe(drm_mga_private_t *dev_priv)
{
 drm_mga_sarea_t *sarea_priv = dev_priv->sarea_priv;
 unsigned int pipe = sarea_priv->warp_pipe;
 DMA_LOCALS;

 BEGIN_DMA(3);

 DMA_BLOCK(MGA_WIADDR, MGA_WMODE_SUSPEND,
    MGA_WVRTXSZ, 0x00000007,
    MGA_WFLAG, 0x00000000, MGA_WR24, 0x00000000);

 DMA_BLOCK(MGA_WR25, 0x00000100,
    MGA_WR34, 0x00000000,
    MGA_WR42, 0x0000ffff, MGA_WR60, 0x0000ffff);



 DMA_BLOCK(MGA_DMAPAD, 0xffffffff,
    MGA_DMAPAD, 0xffffffff,
    MGA_DMAPAD, 0xffffffff,
    MGA_WIADDR, (dev_priv->warp_pipe_phys[pipe] |
          MGA_WMODE_START | dev_priv->wagp_enable));

 ADVANCE_DMA();
}
