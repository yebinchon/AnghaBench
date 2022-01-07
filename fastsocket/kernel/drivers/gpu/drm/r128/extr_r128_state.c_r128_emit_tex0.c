
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int tex_border_color; int * tex_offset; int tex_combine_cntl; int tex_cntl; } ;
typedef TYPE_1__ drm_r128_texture_regs_t ;
struct TYPE_9__ {int constant_color_c; int tex_size_pitch_c; } ;
struct TYPE_7__ {TYPE_1__* tex_state; TYPE_4__ context_state; } ;
typedef TYPE_2__ drm_r128_sarea_t ;
struct TYPE_8__ {TYPE_2__* sarea_priv; } ;
typedef TYPE_3__ drm_r128_private_t ;
typedef TYPE_4__ drm_r128_context_regs_t ;


 int ADVANCE_RING () ;
 int BEGIN_RING (int) ;
 int CCE_PACKET0 (int ,int) ;
 int DRM_DEBUG (char*) ;
 int OUT_RING (int ) ;
 int R128_CONSTANT_COLOR_C ;
 int R128_MAX_TEXTURE_LEVELS ;
 int R128_PRIM_TEX_CNTL_C ;
 int RING_LOCALS ;

__attribute__((used)) static __inline__ void r128_emit_tex0(drm_r128_private_t *dev_priv)
{
 drm_r128_sarea_t *sarea_priv = dev_priv->sarea_priv;
 drm_r128_context_regs_t *ctx = &sarea_priv->context_state;
 drm_r128_texture_regs_t *tex = &sarea_priv->tex_state[0];
 int i;
 RING_LOCALS;
 DRM_DEBUG("\n");

 BEGIN_RING(7 + R128_MAX_TEXTURE_LEVELS);

 OUT_RING(CCE_PACKET0(R128_PRIM_TEX_CNTL_C,
        2 + R128_MAX_TEXTURE_LEVELS));
 OUT_RING(tex->tex_cntl);
 OUT_RING(tex->tex_combine_cntl);
 OUT_RING(ctx->tex_size_pitch_c);
 for (i = 0; i < R128_MAX_TEXTURE_LEVELS; i++)
  OUT_RING(tex->tex_offset[i]);

 OUT_RING(CCE_PACKET0(R128_CONSTANT_COLOR_C, 1));
 OUT_RING(ctx->constant_color_c);
 OUT_RING(tex->tex_border_color);

 ADVANCE_RING();
}
