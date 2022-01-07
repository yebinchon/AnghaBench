
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct radeon_fence_driver {int scratch_reg; int * cpu_addr; } ;
struct TYPE_2__ {scalar_t__ enabled; } ;
struct radeon_device {TYPE_1__ wb; struct radeon_fence_driver* fence_drv; } ;


 int WREG32 (int ,int ) ;
 int cpu_to_le32 (int ) ;
 scalar_t__ likely (int) ;

__attribute__((used)) static void radeon_fence_write(struct radeon_device *rdev, u32 seq, int ring)
{
 struct radeon_fence_driver *drv = &rdev->fence_drv[ring];
 if (likely(rdev->wb.enabled || !drv->scratch_reg)) {
  *drv->cpu_addr = cpu_to_le32(seq);
 } else {
  WREG32(drv->scratch_reg, seq);
 }
}
