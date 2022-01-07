
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct radeon_fence {int ring; scalar_t__ seq; struct radeon_device* rdev; int kref; } ;
struct radeon_device {int ddev; TYPE_1__* fence_drv; } ;
struct TYPE_2__ {scalar_t__* sync_seq; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct radeon_fence* kmalloc (int,int ) ;
 int kref_init (int *) ;
 int radeon_fence_ring_emit (struct radeon_device*,int,struct radeon_fence*) ;
 int trace_radeon_fence_emit (int ,scalar_t__) ;

int radeon_fence_emit(struct radeon_device *rdev,
        struct radeon_fence **fence,
        int ring)
{

 *fence = kmalloc(sizeof(struct radeon_fence), GFP_KERNEL);
 if ((*fence) == ((void*)0)) {
  return -ENOMEM;
 }
 kref_init(&((*fence)->kref));
 (*fence)->rdev = rdev;
 (*fence)->seq = ++rdev->fence_drv[ring].sync_seq[ring];
 (*fence)->ring = ring;
 radeon_fence_ring_emit(rdev, ring, *fence);
 trace_radeon_fence_emit(rdev->ddev, (*fence)->seq);
 return 0;
}
