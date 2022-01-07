
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct radeon_ring {int dummy; } ;
struct radeon_device {struct radeon_ring* ring; } ;


 int ARRAY_1D_TILED_THIN1 ;
 int PACKET3 (int ,int) ;
 int PACKET3_SET_RESOURCE ;
 int PACKET3_TC_ACTION_ENA ;
 size_t RADEON_RING_TYPE_GFX_INDEX ;
 int SQ_SEL_W ;
 int SQ_SEL_X ;
 int SQ_SEL_Y ;
 int SQ_SEL_Z ;
 int SQ_TEX_DIM_2D ;
 int SQ_TEX_VTX_VALID_TEXTURE ;
 int S__SQ_CONSTANT_TYPE (int ) ;
 int TEX_ARRAY_MODE (int ) ;
 int TEX_DIM (int ) ;
 int TEX_DST_SEL_W (int ) ;
 int TEX_DST_SEL_X (int ) ;
 int TEX_DST_SEL_Y (int ) ;
 int TEX_DST_SEL_Z (int ) ;
 int cp_set_surface_sync (struct radeon_device*,int ,int,int) ;
 int radeon_ring_write (struct radeon_ring*,int) ;

__attribute__((used)) static void
set_tex_resource(struct radeon_device *rdev,
   int format, int w, int h, int pitch,
   u64 gpu_addr, u32 size)
{
 struct radeon_ring *ring = &rdev->ring[RADEON_RING_TYPE_GFX_INDEX];
 u32 sq_tex_resource_word0, sq_tex_resource_word1;
 u32 sq_tex_resource_word4, sq_tex_resource_word7;

 if (h < 1)
  h = 1;

 sq_tex_resource_word0 = TEX_DIM(SQ_TEX_DIM_2D);
 sq_tex_resource_word0 |= ((((pitch >> 3) - 1) << 6) |
      ((w - 1) << 18));
 sq_tex_resource_word1 = ((h - 1) << 0) |
    TEX_ARRAY_MODE(ARRAY_1D_TILED_THIN1);

 sq_tex_resource_word4 = TEX_DST_SEL_X(SQ_SEL_X) |
    TEX_DST_SEL_Y(SQ_SEL_Y) |
    TEX_DST_SEL_Z(SQ_SEL_Z) |
    TEX_DST_SEL_W(SQ_SEL_W);

 sq_tex_resource_word7 = format |
  S__SQ_CONSTANT_TYPE(SQ_TEX_VTX_VALID_TEXTURE);

 cp_set_surface_sync(rdev,
       PACKET3_TC_ACTION_ENA, size, gpu_addr);

 radeon_ring_write(ring, PACKET3(PACKET3_SET_RESOURCE, 8));
 radeon_ring_write(ring, 0);
 radeon_ring_write(ring, sq_tex_resource_word0);
 radeon_ring_write(ring, sq_tex_resource_word1);
 radeon_ring_write(ring, gpu_addr >> 8);
 radeon_ring_write(ring, gpu_addr >> 8);
 radeon_ring_write(ring, sq_tex_resource_word4);
 radeon_ring_write(ring, 0);
 radeon_ring_write(ring, 0);
 radeon_ring_write(ring, sq_tex_resource_word7);
}
