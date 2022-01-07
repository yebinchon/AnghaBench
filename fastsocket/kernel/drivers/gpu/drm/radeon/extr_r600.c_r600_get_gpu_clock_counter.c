
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long uint64_t ;
struct radeon_device {int gpu_clock_mutex; } ;


 int RLC_CAPTURE_GPU_CLOCK_COUNT ;
 int RLC_GPU_CLOCK_COUNT_LSB ;
 int RLC_GPU_CLOCK_COUNT_MSB ;
 scalar_t__ RREG32 (int ) ;
 int WREG32 (int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

uint64_t r600_get_gpu_clock_counter(struct radeon_device *rdev)
{
 uint64_t clock;

 mutex_lock(&rdev->gpu_clock_mutex);
 WREG32(RLC_CAPTURE_GPU_CLOCK_COUNT, 1);
 clock = (uint64_t)RREG32(RLC_GPU_CLOCK_COUNT_LSB) |
         ((uint64_t)RREG32(RLC_GPU_CLOCK_COUNT_MSB) << 32ULL);
 mutex_unlock(&rdev->gpu_clock_mutex);
 return clock;
}
