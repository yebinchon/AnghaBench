
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct drm_device {TYPE_1__* agp_buffer_map; TYPE_2__* dev_private; } ;
struct drm_buf {int offset; int idx; } ;
struct TYPE_4__ {int gart_buffers_offset; } ;
typedef TYPE_2__ drm_radeon_private_t ;
struct TYPE_3__ {scalar_t__ handle; } ;


 int ADVANCE_RING () ;
 int BEGIN_RING (int) ;
 int CP_PACKET0 (int ,int) ;
 int DRM_DEBUG (char*,int ,int,int) ;
 int OUT_RING (int) ;
 int RADEON_CP_IB_BASE ;
 int RADEON_CP_PACKET2 ;
 int RING_LOCALS ;

__attribute__((used)) static void radeon_cp_dispatch_indirect(struct drm_device * dev,
     struct drm_buf * buf, int start, int end)
{
 drm_radeon_private_t *dev_priv = dev->dev_private;
 RING_LOCALS;
 DRM_DEBUG("buf=%d s=0x%x e=0x%x\n", buf->idx, start, end);

 if (start != end) {
  int offset = (dev_priv->gart_buffers_offset
         + buf->offset + start);
  int dwords = (end - start + 3) / sizeof(u32);





  if (dwords & 1) {
   u32 *data = (u32 *)
       ((char *)dev->agp_buffer_map->handle
        + buf->offset + start);
   data[dwords++] = RADEON_CP_PACKET2;
  }


  BEGIN_RING(3);

  OUT_RING(CP_PACKET0(RADEON_CP_IB_BASE, 1));
  OUT_RING(offset);
  OUT_RING(dwords);

  ADVANCE_RING();
 }
}
