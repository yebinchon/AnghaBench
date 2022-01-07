
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u64 ;
typedef int u32 ;
struct drm_device {TYPE_1__* agp_buffer_map; TYPE_3__* dev_private; } ;
struct TYPE_7__ {int gart_buffers_offset; TYPE_2__* blit_vb; } ;
typedef TYPE_3__ drm_radeon_private_t ;
struct TYPE_6__ {int offset; int used; } ;
struct TYPE_5__ {scalar_t__ handle; } ;


 int ADVANCE_RING () ;
 int BEGIN_RING (int) ;
 int CP_PACKET3 (int ,int) ;
 int DRM_DEBUG (char*) ;
 int OUT_RING (int) ;
 int R600_IT_SET_CONTEXT_REG ;
 int R600_SET_CONTEXT_REG_OFFSET ;
 int R600_SH_ACTION_ENA ;
 int R600_SQ_PGM_CF_OFFSET_PS ;
 int R600_SQ_PGM_CF_OFFSET_VS ;
 int R600_SQ_PGM_EXPORTS_PS ;
 int R600_SQ_PGM_RESOURCES_PS ;
 int R600_SQ_PGM_RESOURCES_VS ;
 int R600_SQ_PGM_START_PS ;
 int R600_SQ_PGM_START_VS ;
 int RING_LOCALS ;
 int cp_set_surface_sync (TYPE_3__*,int ,int,int) ;
 int cpu_to_le32 (int ) ;
 int * r6xx_ps ;
 int r6xx_ps_size ;
 int * r6xx_vs ;
 int r6xx_vs_size ;

__attribute__((used)) static void
set_shaders(struct drm_device *dev)
{
 drm_radeon_private_t *dev_priv = dev->dev_private;
 u64 gpu_addr;
 int i;
 u32 *vs, *ps;
 uint32_t sq_pgm_resources;
 RING_LOCALS;
 DRM_DEBUG("\n");


 vs = (u32 *) ((char *)dev->agp_buffer_map->handle + dev_priv->blit_vb->offset);
 ps = (u32 *) ((char *)dev->agp_buffer_map->handle + dev_priv->blit_vb->offset + 256);

 for (i = 0; i < r6xx_vs_size; i++)
  vs[i] = cpu_to_le32(r6xx_vs[i]);
 for (i = 0; i < r6xx_ps_size; i++)
  ps[i] = cpu_to_le32(r6xx_ps[i]);

 dev_priv->blit_vb->used = 512;

 gpu_addr = dev_priv->gart_buffers_offset + dev_priv->blit_vb->offset;


 sq_pgm_resources = (1 << 0);

 BEGIN_RING(9 + 12);

 OUT_RING(CP_PACKET3(R600_IT_SET_CONTEXT_REG, 1));
 OUT_RING((R600_SQ_PGM_START_VS - R600_SET_CONTEXT_REG_OFFSET) >> 2);
 OUT_RING(gpu_addr >> 8);

 OUT_RING(CP_PACKET3(R600_IT_SET_CONTEXT_REG, 1));
 OUT_RING((R600_SQ_PGM_RESOURCES_VS - R600_SET_CONTEXT_REG_OFFSET) >> 2);
 OUT_RING(sq_pgm_resources);

 OUT_RING(CP_PACKET3(R600_IT_SET_CONTEXT_REG, 1));
 OUT_RING((R600_SQ_PGM_CF_OFFSET_VS - R600_SET_CONTEXT_REG_OFFSET) >> 2);
 OUT_RING(0);


 OUT_RING(CP_PACKET3(R600_IT_SET_CONTEXT_REG, 1));
 OUT_RING((R600_SQ_PGM_START_PS - R600_SET_CONTEXT_REG_OFFSET) >> 2);
 OUT_RING((gpu_addr + 256) >> 8);

 OUT_RING(CP_PACKET3(R600_IT_SET_CONTEXT_REG, 1));
 OUT_RING((R600_SQ_PGM_RESOURCES_PS - R600_SET_CONTEXT_REG_OFFSET) >> 2);
 OUT_RING(sq_pgm_resources | (1 << 28));

 OUT_RING(CP_PACKET3(R600_IT_SET_CONTEXT_REG, 1));
 OUT_RING((R600_SQ_PGM_EXPORTS_PS - R600_SET_CONTEXT_REG_OFFSET) >> 2);
 OUT_RING(2);

 OUT_RING(CP_PACKET3(R600_IT_SET_CONTEXT_REG, 1));
 OUT_RING((R600_SQ_PGM_CF_OFFSET_PS - R600_SET_CONTEXT_REG_OFFSET) >> 2);
 OUT_RING(0);
 ADVANCE_RING();

 cp_set_surface_sync(dev_priv,
       R600_SH_ACTION_ENA, 512, gpu_addr);
}
