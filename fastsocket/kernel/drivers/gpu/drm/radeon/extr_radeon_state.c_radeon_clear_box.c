
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct drm_radeon_master_private {TYPE_2__* sarea_priv; } ;
struct TYPE_7__ {int color_fmt; int front_pitch_offset; int back_pitch_offset; } ;
typedef TYPE_3__ drm_radeon_private_t ;
struct TYPE_6__ {int pfCurrentPage; TYPE_1__* boxes; } ;
struct TYPE_5__ {scalar_t__ y1; scalar_t__ x1; } ;


 int ADVANCE_RING () ;
 int BEGIN_RING (int) ;
 int CP_PACKET0 (int ,int ) ;
 int CP_PACKET3 (int ,int) ;
 int OUT_RING (int) ;
 int RADEON_CNTL_PAINT_MULTI ;


 int RADEON_DP_WRITE_MASK ;
 int RADEON_GMC_BRUSH_SOLID_COLOR ;
 int RADEON_GMC_CLR_CMP_CNTL_DIS ;
 int RADEON_GMC_DST_PITCH_OFFSET_CNTL ;
 int RADEON_GMC_SRC_DATATYPE_COLOR ;
 int RADEON_ROP3_P ;
 int RADEON_WAIT_UNTIL_3D_IDLE () ;
 int RING_LOCALS ;

__attribute__((used)) static void radeon_clear_box(drm_radeon_private_t * dev_priv,
        struct drm_radeon_master_private *master_priv,
        int x, int y, int w, int h, int r, int g, int b)
{
 u32 color;
 RING_LOCALS;

 x += master_priv->sarea_priv->boxes[0].x1;
 y += master_priv->sarea_priv->boxes[0].y1;

 switch (dev_priv->color_fmt) {
 case 128:
  color = (((r & 0xf8) << 8) |
    ((g & 0xfc) << 3) | ((b & 0xf8) >> 3));
  break;
 case 129:
 default:
  color = (((0xff) << 24) | (r << 16) | (g << 8) | b);
  break;
 }

 BEGIN_RING(4);
 RADEON_WAIT_UNTIL_3D_IDLE();
 OUT_RING(CP_PACKET0(RADEON_DP_WRITE_MASK, 0));
 OUT_RING(0xffffffff);
 ADVANCE_RING();

 BEGIN_RING(6);

 OUT_RING(CP_PACKET3(RADEON_CNTL_PAINT_MULTI, 4));
 OUT_RING(RADEON_GMC_DST_PITCH_OFFSET_CNTL |
   RADEON_GMC_BRUSH_SOLID_COLOR |
   (dev_priv->color_fmt << 8) |
   RADEON_GMC_SRC_DATATYPE_COLOR |
   RADEON_ROP3_P | RADEON_GMC_CLR_CMP_CNTL_DIS);

 if (master_priv->sarea_priv->pfCurrentPage == 1) {
  OUT_RING(dev_priv->front_pitch_offset);
 } else {
  OUT_RING(dev_priv->back_pitch_offset);
 }

 OUT_RING(color);

 OUT_RING((x << 16) | y);
 OUT_RING((w << 16) | h);

 ADVANCE_RING();
}
