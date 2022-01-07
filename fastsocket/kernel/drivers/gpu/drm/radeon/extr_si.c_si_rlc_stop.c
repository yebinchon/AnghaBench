
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int RLC_CNTL ;
 int WREG32 (int ,int ) ;

__attribute__((used)) static void si_rlc_stop(struct radeon_device *rdev)
{
 WREG32(RLC_CNTL, 0);
}
