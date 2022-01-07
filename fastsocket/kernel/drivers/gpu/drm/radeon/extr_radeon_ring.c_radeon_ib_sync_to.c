
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_ib {struct radeon_fence** sync_to; } ;
struct radeon_fence {size_t ring; } ;


 struct radeon_fence* radeon_fence_later (struct radeon_fence*,struct radeon_fence*) ;

void radeon_ib_sync_to(struct radeon_ib *ib, struct radeon_fence *fence)
{
 struct radeon_fence *other;

 if (!fence)
  return;

 other = ib->sync_to[fence->ring];
 ib->sync_to[fence->ring] = radeon_fence_later(fence, other);
}
