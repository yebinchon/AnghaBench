
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_fence {int dummy; } ;


 int radeon_fence_wait (struct radeon_fence*,int) ;

__attribute__((used)) static int radeon_sync_obj_wait(void *sync_obj, bool lazy, bool interruptible)
{
 return radeon_fence_wait((struct radeon_fence *)sync_obj, interruptible);
}
