
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct radeon_device {scalar_t__ rio_mem_size; scalar_t__ rio_mem; } ;


 scalar_t__ RADEON_MM_DATA ;
 scalar_t__ RADEON_MM_INDEX ;
 int iowrite32 (scalar_t__,scalar_t__) ;

void r100_io_wreg(struct radeon_device *rdev, u32 reg, u32 v)
{
 if (reg < rdev->rio_mem_size)
  iowrite32(v, rdev->rio_mem + reg);
 else {
  iowrite32(reg, rdev->rio_mem + RADEON_MM_INDEX);
  iowrite32(v, rdev->rio_mem + RADEON_MM_DATA);
 }
}
