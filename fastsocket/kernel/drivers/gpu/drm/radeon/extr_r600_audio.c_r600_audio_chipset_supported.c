
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {scalar_t__ family; } ;


 int ASIC_IS_DCE6 (struct radeon_device*) ;
 scalar_t__ CHIP_R600 ;
 scalar_t__ CHIP_RS600 ;
 scalar_t__ CHIP_RS690 ;
 scalar_t__ CHIP_RS740 ;

__attribute__((used)) static int r600_audio_chipset_supported(struct radeon_device *rdev)
{
 return (rdev->family >= CHIP_R600 && !ASIC_IS_DCE6(rdev))
  || rdev->family == CHIP_RS600
  || rdev->family == CHIP_RS690
  || rdev->family == CHIP_RS740;
}
