
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct drm_file {int dummy; } ;
struct drm_device_dma {struct drm_buf** buflist; } ;
struct drm_device {TYPE_1__* agp_buffer_map; struct drm_device_dma* dma; int * dev_private; } ;
struct drm_buf {int offset; int used; scalar_t__ pending; struct drm_file* file_priv; TYPE_2__* dev_private; } ;
typedef int drm_r128_private_t ;
struct TYPE_6__ {int discard; } ;
typedef TYPE_2__ drm_r128_buf_priv_t ;
struct TYPE_7__ {int format; size_t idx; int width; int height; int pitch; int offset; int y; int x; } ;
typedef TYPE_3__ drm_r128_blit_t ;
struct TYPE_5__ {scalar_t__ handle; } ;


 int ADVANCE_RING () ;
 int BEGIN_RING (int) ;
 int CCE_PACKET0 (int ,int ) ;
 int CCE_PACKET3 (int ,int) ;
 int DRM_CURRENTPID ;
 int DRM_DEBUG (char*) ;
 int DRM_ERROR (char*,int,...) ;
 int EINVAL ;
 int OUT_RING (int) ;
 int R128_CNTL_HOSTDATA_BLT ;
 int R128_DP_SRC_SOURCE_HOST_DATA ;
 int R128_GMC_AUX_CLIP_DIS ;
 int R128_GMC_BRUSH_NONE ;
 int R128_GMC_CLR_CMP_CNTL_DIS ;
 int R128_GMC_DST_PITCH_OFFSET_CNTL ;
 int R128_GMC_SRC_DATATYPE_COLOR ;
 int R128_GMC_WR_MSK_DIS ;
 int R128_PC_FLUSH_GUI ;
 int R128_PC_GUI_CTLSTAT ;
 int R128_PC_RI_GUI ;
 int R128_ROP3_S ;
 int RING_LOCALS ;
 int cpu_to_le32 (int) ;
 int r128_cce_dispatch_indirect (struct drm_device*,struct drm_buf*,int ,int) ;

__attribute__((used)) static int r128_cce_dispatch_blit(struct drm_device *dev,
      struct drm_file *file_priv,
      drm_r128_blit_t *blit)
{
 drm_r128_private_t *dev_priv = dev->dev_private;
 struct drm_device_dma *dma = dev->dma;
 struct drm_buf *buf;
 drm_r128_buf_priv_t *buf_priv;
 u32 *data;
 int dword_shift, dwords;
 RING_LOCALS;
 DRM_DEBUG("\n");





 switch (blit->format) {
 case 133:
  dword_shift = 0;
  break;
 case 135:
 case 131:
 case 134:
 case 128:
 case 129:
  dword_shift = 1;
  break;
 case 132:
 case 130:
  dword_shift = 2;
  break;
 default:
  DRM_ERROR("invalid blit format %d\n", blit->format);
  return -EINVAL;
 }






 BEGIN_RING(2);

 OUT_RING(CCE_PACKET0(R128_PC_GUI_CTLSTAT, 0));
 OUT_RING(R128_PC_RI_GUI | R128_PC_FLUSH_GUI);

 ADVANCE_RING();



 buf = dma->buflist[blit->idx];
 buf_priv = buf->dev_private;

 if (buf->file_priv != file_priv) {
  DRM_ERROR("process %d using buffer owned by %p\n",
     DRM_CURRENTPID, buf->file_priv);
  return -EINVAL;
 }
 if (buf->pending) {
  DRM_ERROR("sending pending buffer %d\n", blit->idx);
  return -EINVAL;
 }

 buf_priv->discard = 1;

 dwords = (blit->width * blit->height) >> dword_shift;

 data = (u32 *) ((char *)dev->agp_buffer_map->handle + buf->offset);

 data[0] = cpu_to_le32(CCE_PACKET3(R128_CNTL_HOSTDATA_BLT, dwords + 6));
 data[1] = cpu_to_le32((R128_GMC_DST_PITCH_OFFSET_CNTL |
          R128_GMC_BRUSH_NONE |
          (blit->format << 8) |
          R128_GMC_SRC_DATATYPE_COLOR |
          R128_ROP3_S |
          R128_DP_SRC_SOURCE_HOST_DATA |
          R128_GMC_CLR_CMP_CNTL_DIS |
          R128_GMC_AUX_CLIP_DIS | R128_GMC_WR_MSK_DIS));

 data[2] = cpu_to_le32((blit->pitch << 21) | (blit->offset >> 5));
 data[3] = cpu_to_le32(0xffffffff);
 data[4] = cpu_to_le32(0xffffffff);
 data[5] = cpu_to_le32((blit->y << 16) | blit->x);
 data[6] = cpu_to_le32((blit->height << 16) | blit->width);
 data[7] = cpu_to_le32(dwords);

 buf->used = (dwords + 8) * sizeof(u32);

 r128_cce_dispatch_indirect(dev, buf, 0, buf->used);





 BEGIN_RING(2);

 OUT_RING(CCE_PACKET0(R128_PC_GUI_CTLSTAT, 0));
 OUT_RING(R128_PC_FLUSH_GUI);

 ADVANCE_RING();

 return 0;
}
