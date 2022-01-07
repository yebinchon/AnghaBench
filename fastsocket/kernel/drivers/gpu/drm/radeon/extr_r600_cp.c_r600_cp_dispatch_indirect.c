
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct drm_device {TYPE_1__* agp_buffer_map; TYPE_2__* dev_private; } ;
struct drm_buf {int offset; } ;
struct TYPE_4__ {int gart_buffers_offset; } ;
typedef TYPE_2__ drm_radeon_private_t ;
struct TYPE_3__ {scalar_t__ handle; } ;


 int ADVANCE_RING () ;
 int BEGIN_RING (int) ;
 int CP_PACKET3 (int ,int) ;
 int DRM_DEBUG (char*,unsigned long) ;
 int OUT_RING (int) ;
 int R600_IT_INDIRECT_BUFFER ;
 int RADEON_CP_PACKET2 ;
 int RING_LOCALS ;
 int upper_32_bits (unsigned long) ;

int r600_cp_dispatch_indirect(struct drm_device *dev,
         struct drm_buf *buf, int start, int end)
{
 drm_radeon_private_t *dev_priv = dev->dev_private;
 RING_LOCALS;

 if (start != end) {
  unsigned long offset = (dev_priv->gart_buffers_offset
     + buf->offset + start);
  int dwords = (end - start + 3) / sizeof(u32);

  DRM_DEBUG("dwords:%d\n", dwords);
  DRM_DEBUG("offset 0x%lx\n", offset);





  while (dwords & 0xf) {
   u32 *data = (u32 *)
       ((char *)dev->agp_buffer_map->handle
        + buf->offset + start);
   data[dwords++] = RADEON_CP_PACKET2;
  }


  BEGIN_RING(4);
  OUT_RING(CP_PACKET3(R600_IT_INDIRECT_BUFFER, 2));
  OUT_RING((offset & 0xfffffffc));
  OUT_RING((upper_32_bits(offset) & 0xff));
  OUT_RING(dwords);
  ADVANCE_RING();
 }

 return 0;
}
