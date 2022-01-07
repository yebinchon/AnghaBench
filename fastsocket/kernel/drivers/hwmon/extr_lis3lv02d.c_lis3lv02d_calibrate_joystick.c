
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int zcalib; int ycalib; int xcalib; } ;


 TYPE_1__ lis3_dev ;
 int lis3lv02d_get_xyz (TYPE_1__*,int *,int *,int *) ;

__attribute__((used)) static inline void lis3lv02d_calibrate_joystick(void)
{
 lis3lv02d_get_xyz(&lis3_dev,
  &lis3_dev.xcalib, &lis3_dev.ycalib, &lis3_dev.zcalib);
}
