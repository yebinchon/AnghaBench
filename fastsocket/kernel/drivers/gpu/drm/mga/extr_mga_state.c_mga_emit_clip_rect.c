
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct drm_clip_rect {int x2; int x1; unsigned int y1; int y2; } ;
struct TYPE_7__ {int dwgctl; } ;
struct TYPE_5__ {TYPE_3__ context_state; } ;
typedef TYPE_1__ drm_mga_sarea_t ;
struct TYPE_6__ {unsigned int front_pitch; scalar_t__ chipset; TYPE_1__* sarea_priv; } ;
typedef TYPE_2__ drm_mga_private_t ;
typedef TYPE_3__ drm_mga_context_regs_t ;


 int ADVANCE_DMA () ;
 int BEGIN_DMA (int) ;
 int DMA_BLOCK (int ,int,scalar_t__,int,int ,unsigned int,scalar_t__,int) ;
 int DMA_LOCALS ;
 scalar_t__ MGA_CARD_TYPE_G400 ;
 scalar_t__ MGA_CXBNDRY ;
 int MGA_DMAPAD ;
 int MGA_DWGCTL ;
 scalar_t__ MGA_EXEC ;
 scalar_t__ MGA_LEN ;
 scalar_t__ MGA_YBOT ;
 int MGA_YTOP ;

__attribute__((used)) static void mga_emit_clip_rect(drm_mga_private_t *dev_priv,
          struct drm_clip_rect *box)
{
 drm_mga_sarea_t *sarea_priv = dev_priv->sarea_priv;
 drm_mga_context_regs_t *ctx = &sarea_priv->context_state;
 unsigned int pitch = dev_priv->front_pitch;
 DMA_LOCALS;

 BEGIN_DMA(2);



 if (dev_priv->chipset >= MGA_CARD_TYPE_G400) {
  DMA_BLOCK(MGA_DWGCTL, ctx->dwgctl,
     MGA_LEN + MGA_EXEC, 0x80000000,
     MGA_DWGCTL, ctx->dwgctl,
     MGA_LEN + MGA_EXEC, 0x80000000);
 }
 DMA_BLOCK(MGA_DMAPAD, 0x00000000,
    MGA_CXBNDRY, ((box->x2 - 1) << 16) | box->x1,
    MGA_YTOP, box->y1 * pitch, MGA_YBOT, (box->y2 - 1) * pitch);

 ADVANCE_DMA();
}
