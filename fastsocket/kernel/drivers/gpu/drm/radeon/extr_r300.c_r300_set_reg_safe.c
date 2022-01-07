
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int reg_safe_bm_size; int reg_safe_bm; } ;
struct TYPE_4__ {TYPE_1__ r300; } ;
struct radeon_device {TYPE_2__ config; } ;


 int ARRAY_SIZE (int ) ;
 int r300_reg_safe_bm ;

void r300_set_reg_safe(struct radeon_device *rdev)
{
 rdev->config.r300.reg_safe_bm = r300_reg_safe_bm;
 rdev->config.r300.reg_safe_bm_size = ARRAY_SIZE(r300_reg_safe_bm);
}
