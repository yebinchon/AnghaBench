
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct radeon_ring {int dummy; } ;
struct TYPE_2__ {int shader_gpu_addr; int vs_offset; int ps_offset; } ;
struct radeon_device {TYPE_1__ r600_blit; struct radeon_ring* ring; } ;


 int PACKET3 (int ,int) ;
 int PACKET3_SET_CONTEXT_REG ;
 int PACKET3_SET_CONTEXT_REG_START ;
 int PACKET3_SH_ACTION_ENA ;
 size_t RADEON_RING_TYPE_GFX_INDEX ;
 int SQ_PGM_START_PS ;
 int SQ_PGM_START_VS ;
 int cp_set_surface_sync (struct radeon_device*,int ,int,int) ;
 int radeon_ring_write (struct radeon_ring*,int) ;

__attribute__((used)) static void
set_shaders(struct radeon_device *rdev)
{
 struct radeon_ring *ring = &rdev->ring[RADEON_RING_TYPE_GFX_INDEX];
 u64 gpu_addr;


 gpu_addr = rdev->r600_blit.shader_gpu_addr + rdev->r600_blit.vs_offset;
 radeon_ring_write(ring, PACKET3(PACKET3_SET_CONTEXT_REG, 3));
 radeon_ring_write(ring, (SQ_PGM_START_VS - PACKET3_SET_CONTEXT_REG_START) >> 2);
 radeon_ring_write(ring, gpu_addr >> 8);
 radeon_ring_write(ring, 2);
 radeon_ring_write(ring, 0);


 gpu_addr = rdev->r600_blit.shader_gpu_addr + rdev->r600_blit.ps_offset;
 radeon_ring_write(ring, PACKET3(PACKET3_SET_CONTEXT_REG, 4));
 radeon_ring_write(ring, (SQ_PGM_START_PS - PACKET3_SET_CONTEXT_REG_START) >> 2);
 radeon_ring_write(ring, gpu_addr >> 8);
 radeon_ring_write(ring, 1);
 radeon_ring_write(ring, 0);
 radeon_ring_write(ring, 2);

 gpu_addr = rdev->r600_blit.shader_gpu_addr + rdev->r600_blit.vs_offset;
 cp_set_surface_sync(rdev, PACKET3_SH_ACTION_ENA, 512, gpu_addr);
}
