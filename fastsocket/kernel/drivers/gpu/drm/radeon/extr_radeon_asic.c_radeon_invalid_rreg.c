
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct radeon_device {int dummy; } ;


 int BUG_ON (int) ;
 int DRM_ERROR (char*,int ) ;

__attribute__((used)) static uint32_t radeon_invalid_rreg(struct radeon_device *rdev, uint32_t reg)
{
 DRM_ERROR("Invalid callback to read register 0x%04X\n", reg);
 BUG_ON(1);
 return 0;
}
