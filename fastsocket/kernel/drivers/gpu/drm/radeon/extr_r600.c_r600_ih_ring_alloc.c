
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * ring_obj; int ring; int gpu_addr; int ring_size; } ;
struct radeon_device {TYPE_1__ ih; } ;


 int DRM_ERROR (char*,int) ;
 int PAGE_SIZE ;
 int RADEON_GEM_DOMAIN_GTT ;
 int radeon_bo_create (struct radeon_device*,int ,int ,int,int ,int *,int **) ;
 int radeon_bo_kmap (int *,void**) ;
 int radeon_bo_pin (int *,int ,int *) ;
 int radeon_bo_reserve (int *,int) ;
 int radeon_bo_unreserve (int *) ;
 scalar_t__ unlikely (int) ;

int r600_ih_ring_alloc(struct radeon_device *rdev)
{
 int r;


 if (rdev->ih.ring_obj == ((void*)0)) {
  r = radeon_bo_create(rdev, rdev->ih.ring_size,
         PAGE_SIZE, 1,
         RADEON_GEM_DOMAIN_GTT,
         ((void*)0), &rdev->ih.ring_obj);
  if (r) {
   DRM_ERROR("radeon: failed to create ih ring buffer (%d).\n", r);
   return r;
  }
  r = radeon_bo_reserve(rdev->ih.ring_obj, 0);
  if (unlikely(r != 0))
   return r;
  r = radeon_bo_pin(rdev->ih.ring_obj,
      RADEON_GEM_DOMAIN_GTT,
      &rdev->ih.gpu_addr);
  if (r) {
   radeon_bo_unreserve(rdev->ih.ring_obj);
   DRM_ERROR("radeon: failed to pin ih ring buffer (%d).\n", r);
   return r;
  }
  r = radeon_bo_kmap(rdev->ih.ring_obj,
       (void **)&rdev->ih.ring);
  radeon_bo_unreserve(rdev->ih.ring_obj);
  if (r) {
   DRM_ERROR("radeon: failed to map ih ring buffer (%d).\n", r);
   return r;
  }
 }
 return 0;
}
