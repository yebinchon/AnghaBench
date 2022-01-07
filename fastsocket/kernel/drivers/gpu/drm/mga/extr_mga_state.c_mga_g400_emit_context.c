
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int dstorg; int plnwt; int dwgctl; int alphactrl; int wflag; int tdualstage1; int fcol; int stencil; int stencilctl; int tdualstage0; int fogcolor; int maccess; } ;
struct TYPE_5__ {TYPE_3__ context_state; } ;
typedef TYPE_1__ drm_mga_sarea_t ;
struct TYPE_6__ {int depth_offset; TYPE_1__* sarea_priv; } ;
typedef TYPE_2__ drm_mga_private_t ;
typedef TYPE_3__ drm_mga_context_regs_t ;


 int ADVANCE_DMA () ;
 int BEGIN_DMA (int) ;
 int DMA_BLOCK (int ,int,int ,int ,int ,int,int ,int) ;
 int DMA_LOCALS ;
 int MGA_ALPHACTRL ;
 int MGA_DMAPAD ;
 int MGA_DSTORG ;
 int MGA_DWGCTL ;
 int MGA_FCOL ;
 int MGA_FOGCOL ;
 int MGA_MACCESS ;
 int MGA_PLNWT ;
 int MGA_STENCIL ;
 int MGA_STENCILCTL ;
 int MGA_TDUALSTAGE0 ;
 int MGA_TDUALSTAGE1 ;
 int MGA_WFLAG ;
 int MGA_WFLAG1 ;
 int MGA_ZORG ;

__attribute__((used)) static __inline__ void mga_g400_emit_context(drm_mga_private_t *dev_priv)
{
 drm_mga_sarea_t *sarea_priv = dev_priv->sarea_priv;
 drm_mga_context_regs_t *ctx = &sarea_priv->context_state;
 DMA_LOCALS;

 BEGIN_DMA(4);

 DMA_BLOCK(MGA_DSTORG, ctx->dstorg,
    MGA_MACCESS, ctx->maccess,
    MGA_PLNWT, ctx->plnwt, MGA_DWGCTL, ctx->dwgctl);

 DMA_BLOCK(MGA_ALPHACTRL, ctx->alphactrl,
    MGA_FOGCOL, ctx->fogcolor,
    MGA_WFLAG, ctx->wflag, MGA_ZORG, dev_priv->depth_offset);

 DMA_BLOCK(MGA_WFLAG1, ctx->wflag,
    MGA_TDUALSTAGE0, ctx->tdualstage0,
    MGA_TDUALSTAGE1, ctx->tdualstage1, MGA_FCOL, ctx->fcol);

 DMA_BLOCK(MGA_STENCIL, ctx->stencil,
    MGA_STENCILCTL, ctx->stencilctl,
    MGA_DMAPAD, 0x00000000, MGA_DMAPAD, 0x00000000);

 ADVANCE_DMA();
}
