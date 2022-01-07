
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u64 ;
typedef int drm_radeon_private_t ;


 int ADVANCE_RING () ;
 int BEGIN_RING (int) ;
 int CP_PACKET3 (int ,int) ;
 int DRM_DEBUG (char*) ;
 int OUT_RING (int) ;
 int R600_IT_SET_RESOURCE ;
 int R600_SQ_TEX_VTX_VALID_TEXTURE ;
 int RING_LOCALS ;

__attribute__((used)) static void
set_tex_resource(drm_radeon_private_t *dev_priv,
   int format, int w, int h, int pitch, u64 gpu_addr)
{
 uint32_t sq_tex_resource_word0, sq_tex_resource_word1, sq_tex_resource_word4;
 RING_LOCALS;
 DRM_DEBUG("\n");

 if (h < 1)
  h = 1;

 sq_tex_resource_word0 = (1 << 0);
 sq_tex_resource_word0 |= ((((pitch >> 3) - 1) << 8) |
      ((w - 1) << 19));

 sq_tex_resource_word1 = (format << 26);
 sq_tex_resource_word1 |= ((h - 1) << 0);

 sq_tex_resource_word4 = ((1 << 14) |
     (0 << 16) |
     (1 << 19) |
     (2 << 22) |
     (3 << 25));

 BEGIN_RING(9);
 OUT_RING(CP_PACKET3(R600_IT_SET_RESOURCE, 7));
 OUT_RING(0);
 OUT_RING(sq_tex_resource_word0);
 OUT_RING(sq_tex_resource_word1);
 OUT_RING(gpu_addr >> 8);
 OUT_RING(gpu_addr >> 8);
 OUT_RING(sq_tex_resource_word4);
 OUT_RING(0);
 OUT_RING(R600_SQ_TEX_VTX_VALID_TEXTURE << 30);
 ADVANCE_RING();

}
