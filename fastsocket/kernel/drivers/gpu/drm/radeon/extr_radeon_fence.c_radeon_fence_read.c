
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct radeon_fence_driver {int scratch_reg; int * cpu_addr; } ;
struct TYPE_2__ {scalar_t__ enabled; } ;
struct radeon_device {TYPE_1__ wb; struct radeon_fence_driver* fence_drv; } ;


 int RREG32 (int ) ;
 int le32_to_cpu (int ) ;
 scalar_t__ likely (int) ;

__attribute__((used)) static u32 radeon_fence_read(struct radeon_device *rdev, int ring)
{
 struct radeon_fence_driver *drv = &rdev->fence_drv[ring];
 u32 seq = 0;

 if (likely(rdev->wb.enabled || !drv->scratch_reg)) {
  seq = le32_to_cpu(*drv->cpu_addr);
 } else {
  seq = RREG32(drv->scratch_reg);
 }
 return seq;
}
