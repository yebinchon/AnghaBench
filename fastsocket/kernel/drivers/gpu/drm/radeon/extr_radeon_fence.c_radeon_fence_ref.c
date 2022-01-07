
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_fence {int kref; } ;


 int kref_get (int *) ;

struct radeon_fence *radeon_fence_ref(struct radeon_fence *fence)
{
 kref_get(&fence->kref);
 return fence;
}
