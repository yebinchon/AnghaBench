
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int real_vram_size; } ;
struct TYPE_5__ {int set_default_state; int draw_auto; int set_scissors; int set_tex_resource; int set_vtx_resource; int set_shaders; int cp_set_surface_sync; int set_render_target; } ;
struct TYPE_6__ {int ring_size_common; int ring_size_per_loop; int max_dim; int state_offset; int state_len; int vs_offset; int ps_offset; int shader_obj; int shader_gpu_addr; TYPE_2__ primitives; } ;
struct radeon_device {scalar_t__ family; TYPE_1__ mc; TYPE_3__ r600_blit; int dev; } ;


 int ALIGN (int,int) ;
 scalar_t__ CHIP_CAYMAN ;
 int DRM_DEBUG (char*,int,int,int) ;
 int DRM_ERROR (char*,...) ;
 int PACKET2 (int ) ;
 int PAGE_SIZE ;
 int RADEON_GEM_DOMAIN_VRAM ;
 int cayman_default_size ;
 int* cayman_default_state ;
 int * cayman_ps ;
 int cayman_ps_size ;
 int * cayman_vs ;
 int cayman_vs_size ;
 int cp_set_surface_sync ;
 int cpu_to_le32 (int ) ;
 int dev_err (int ,char*,int) ;
 int draw_auto ;
 int evergreen_default_size ;
 int* evergreen_default_state ;
 int * evergreen_ps ;
 int evergreen_ps_size ;
 int * evergreen_vs ;
 int evergreen_vs_size ;
 int memcpy_toio (void*,int*,int) ;
 int radeon_bo_create (struct radeon_device*,int,int ,int,int ,int *,int *) ;
 int radeon_bo_kmap (int ,void**) ;
 int radeon_bo_kunmap (int ) ;
 int radeon_bo_pin (int ,int ,int *) ;
 int radeon_bo_reserve (int ,int) ;
 int radeon_bo_unreserve (int ) ;
 int radeon_ttm_set_active_vram_size (struct radeon_device*,int ) ;
 int set_default_state ;
 int set_render_target ;
 int set_scissors ;
 int set_shaders ;
 int set_tex_resource ;
 int set_vtx_resource ;
 scalar_t__ unlikely (int) ;

int evergreen_blit_init(struct radeon_device *rdev)
{
 u32 obj_size;
 int i, r, dwords;
 void *ptr;
 u32 packet2s[16];
 int num_packet2s = 0;

 rdev->r600_blit.primitives.set_render_target = set_render_target;
 rdev->r600_blit.primitives.cp_set_surface_sync = cp_set_surface_sync;
 rdev->r600_blit.primitives.set_shaders = set_shaders;
 rdev->r600_blit.primitives.set_vtx_resource = set_vtx_resource;
 rdev->r600_blit.primitives.set_tex_resource = set_tex_resource;
 rdev->r600_blit.primitives.set_scissors = set_scissors;
 rdev->r600_blit.primitives.draw_auto = draw_auto;
 rdev->r600_blit.primitives.set_default_state = set_default_state;

 rdev->r600_blit.ring_size_common = 8;
 rdev->r600_blit.ring_size_common += 55;
 rdev->r600_blit.ring_size_common += 16;
 rdev->r600_blit.ring_size_common += 5;
 rdev->r600_blit.ring_size_common += 16;

 rdev->r600_blit.ring_size_per_loop = 74;
 if (rdev->family >= CHIP_CAYMAN)
  rdev->r600_blit.ring_size_per_loop += 9;

 rdev->r600_blit.max_dim = 16384;

 rdev->r600_blit.state_offset = 0;

 if (rdev->family < CHIP_CAYMAN)
  rdev->r600_blit.state_len = evergreen_default_size;
 else
  rdev->r600_blit.state_len = cayman_default_size;

 dwords = rdev->r600_blit.state_len;
 while (dwords & 0xf) {
  packet2s[num_packet2s++] = cpu_to_le32(PACKET2(0));
  dwords++;
 }

 obj_size = dwords * 4;
 obj_size = ALIGN(obj_size, 256);

 rdev->r600_blit.vs_offset = obj_size;
 if (rdev->family < CHIP_CAYMAN)
  obj_size += evergreen_vs_size * 4;
 else
  obj_size += cayman_vs_size * 4;
 obj_size = ALIGN(obj_size, 256);

 rdev->r600_blit.ps_offset = obj_size;
 if (rdev->family < CHIP_CAYMAN)
  obj_size += evergreen_ps_size * 4;
 else
  obj_size += cayman_ps_size * 4;
 obj_size = ALIGN(obj_size, 256);


 if (!rdev->r600_blit.shader_obj) {
  r = radeon_bo_create(rdev, obj_size, PAGE_SIZE, 1,
         RADEON_GEM_DOMAIN_VRAM,
         ((void*)0), &rdev->r600_blit.shader_obj);
  if (r) {
   DRM_ERROR("evergreen failed to allocate shader\n");
   return r;
  }

  r = radeon_bo_reserve(rdev->r600_blit.shader_obj, 0);
  if (unlikely(r != 0))
   return r;
  r = radeon_bo_pin(rdev->r600_blit.shader_obj, RADEON_GEM_DOMAIN_VRAM,
      &rdev->r600_blit.shader_gpu_addr);
  radeon_bo_unreserve(rdev->r600_blit.shader_obj);
  if (r) {
   dev_err(rdev->dev, "(%d) pin blit object failed\n", r);
   return r;
  }
 }

 DRM_DEBUG("evergreen blit allocated bo %08x vs %08x ps %08x\n",
    obj_size,
    rdev->r600_blit.vs_offset, rdev->r600_blit.ps_offset);

 r = radeon_bo_reserve(rdev->r600_blit.shader_obj, 0);
 if (unlikely(r != 0))
  return r;
 r = radeon_bo_kmap(rdev->r600_blit.shader_obj, &ptr);
 if (r) {
  DRM_ERROR("failed to map blit object %d\n", r);
  return r;
 }

 if (rdev->family < CHIP_CAYMAN) {
  memcpy_toio(ptr + rdev->r600_blit.state_offset,
       evergreen_default_state, rdev->r600_blit.state_len * 4);

  if (num_packet2s)
   memcpy_toio(ptr + rdev->r600_blit.state_offset + (rdev->r600_blit.state_len * 4),
        packet2s, num_packet2s * 4);
  for (i = 0; i < evergreen_vs_size; i++)
   *(u32 *)((unsigned long)ptr + rdev->r600_blit.vs_offset + i * 4) = cpu_to_le32(evergreen_vs[i]);
  for (i = 0; i < evergreen_ps_size; i++)
   *(u32 *)((unsigned long)ptr + rdev->r600_blit.ps_offset + i * 4) = cpu_to_le32(evergreen_ps[i]);
 } else {
  memcpy_toio(ptr + rdev->r600_blit.state_offset,
       cayman_default_state, rdev->r600_blit.state_len * 4);

  if (num_packet2s)
   memcpy_toio(ptr + rdev->r600_blit.state_offset + (rdev->r600_blit.state_len * 4),
        packet2s, num_packet2s * 4);
  for (i = 0; i < cayman_vs_size; i++)
   *(u32 *)((unsigned long)ptr + rdev->r600_blit.vs_offset + i * 4) = cpu_to_le32(cayman_vs[i]);
  for (i = 0; i < cayman_ps_size; i++)
   *(u32 *)((unsigned long)ptr + rdev->r600_blit.ps_offset + i * 4) = cpu_to_le32(cayman_ps[i]);
 }
 radeon_bo_kunmap(rdev->r600_blit.shader_obj);
 radeon_bo_unreserve(rdev->r600_blit.shader_obj);

 radeon_ttm_set_active_vram_size(rdev, rdev->mc.real_vram_size);
 return 0;
}
