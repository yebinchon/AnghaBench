
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_fence {int dummy; } ;


 int radeon_fence_signaled (struct radeon_fence*) ;

__attribute__((used)) static bool radeon_sync_obj_signaled(void *sync_obj)
{
 return radeon_fence_signaled((struct radeon_fence *)sync_obj);
}
