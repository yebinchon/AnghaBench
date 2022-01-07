
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_fence {int kref; } ;


 int kref_put (int *,int ) ;
 int radeon_fence_destroy ;

void radeon_fence_unref(struct radeon_fence **fence)
{
 struct radeon_fence *tmp = *fence;

 *fence = ((void*)0);
 if (tmp) {
  kref_put(&tmp->kref, radeon_fence_destroy);
 }
}
