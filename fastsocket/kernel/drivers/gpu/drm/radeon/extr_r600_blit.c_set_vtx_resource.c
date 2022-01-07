
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u64 ;
struct TYPE_4__ {int flags; } ;
typedef TYPE_1__ drm_radeon_private_t ;


 int ADVANCE_RING () ;
 int BEGIN_RING (int) ;
 int CHIP_RS780 ;
 int CHIP_RS880 ;
 int CHIP_RV610 ;
 int CHIP_RV620 ;
 int CHIP_RV710 ;
 int CP_PACKET3 (int ,int) ;
 int DRM_DEBUG (char*) ;
 int OUT_RING (int) ;
 int R600_IT_SET_RESOURCE ;
 int R600_SQ_TEX_VTX_VALID_BUFFER ;
 int R600_TC_ACTION_ENA ;
 int R600_VC_ACTION_ENA ;
 int RADEON_FAMILY_MASK ;
 int RING_LOCALS ;
 int cp_set_surface_sync (TYPE_1__*,int ,int,int) ;

__attribute__((used)) static void
set_vtx_resource(drm_radeon_private_t *dev_priv, u64 gpu_addr)
{
 uint32_t sq_vtx_constant_word2;
 RING_LOCALS;
 DRM_DEBUG("\n");

 sq_vtx_constant_word2 = (((gpu_addr >> 32) & 0xff) | (16 << 8));




 BEGIN_RING(9);
 OUT_RING(CP_PACKET3(R600_IT_SET_RESOURCE, 7));
 OUT_RING(0x460);
 OUT_RING(gpu_addr & 0xffffffff);
 OUT_RING(48 - 1);
 OUT_RING(sq_vtx_constant_word2);
 OUT_RING(1 << 0);
 OUT_RING(0);
 OUT_RING(0);
 OUT_RING(R600_SQ_TEX_VTX_VALID_BUFFER << 30);
 ADVANCE_RING();

 if (((dev_priv->flags & RADEON_FAMILY_MASK) == CHIP_RV610) ||
     ((dev_priv->flags & RADEON_FAMILY_MASK) == CHIP_RV620) ||
     ((dev_priv->flags & RADEON_FAMILY_MASK) == CHIP_RS780) ||
     ((dev_priv->flags & RADEON_FAMILY_MASK) == CHIP_RS880) ||
     ((dev_priv->flags & RADEON_FAMILY_MASK) == CHIP_RV710))
  cp_set_surface_sync(dev_priv,
        R600_TC_ACTION_ENA, 48, gpu_addr);
 else
  cp_set_surface_sync(dev_priv,
        R600_VC_ACTION_ENA, 48, gpu_addr);
}
