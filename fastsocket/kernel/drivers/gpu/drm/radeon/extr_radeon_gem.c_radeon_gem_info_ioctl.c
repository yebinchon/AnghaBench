
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
struct ttm_mem_type_manager {scalar_t__ size; } ;
struct TYPE_7__ {int gtt_size; int real_vram_size; } ;
struct TYPE_5__ {struct ttm_mem_type_manager* man; } ;
struct TYPE_6__ {TYPE_1__ bdev; } ;
struct radeon_device {TYPE_4__* ring; TYPE_3__ mc; scalar_t__ stollen_vga_memory; TYPE_2__ mman; } ;
struct drm_radeon_gem_info {int vram_visible; int gart_size; int vram_size; } ;
struct drm_file {int dummy; } ;
struct drm_device {struct radeon_device* dev_private; } ;
struct TYPE_8__ {int ring_size; } ;


 int PAGE_SHIFT ;
 int RADEON_IB_POOL_SIZE ;
 unsigned int RADEON_NUM_RINGS ;
 size_t TTM_PL_VRAM ;
 scalar_t__ radeon_bo_size (scalar_t__) ;
 scalar_t__ radeon_fbdev_total_size (struct radeon_device*) ;

int radeon_gem_info_ioctl(struct drm_device *dev, void *data,
     struct drm_file *filp)
{
 struct radeon_device *rdev = dev->dev_private;
 struct drm_radeon_gem_info *args = data;
 struct ttm_mem_type_manager *man;
 unsigned i;

 man = &rdev->mman.bdev.man[TTM_PL_VRAM];

 args->vram_size = rdev->mc.real_vram_size;
 args->vram_visible = (u64)man->size << PAGE_SHIFT;
 if (rdev->stollen_vga_memory)
  args->vram_visible -= radeon_bo_size(rdev->stollen_vga_memory);
 args->vram_visible -= radeon_fbdev_total_size(rdev);
 args->gart_size = rdev->mc.gtt_size - 4096 - RADEON_IB_POOL_SIZE*64*1024;
 for(i = 0; i < RADEON_NUM_RINGS; ++i)
  args->gart_size -= rdev->ring[i].ring_size;
 return 0;
}
