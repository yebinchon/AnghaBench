
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct input_polled_dev {int input; } ;
struct TYPE_3__ {scalar_t__ zcalib; scalar_t__ ycalib; scalar_t__ xcalib; } ;


 int ABS_X ;
 int ABS_Y ;
 int ABS_Z ;
 int input_report_abs (int ,int ,scalar_t__) ;
 TYPE_1__ lis3_dev ;
 int lis3lv02d_get_xyz (TYPE_1__*,int*,int*,int*) ;

__attribute__((used)) static void lis3lv02d_joystick_poll(struct input_polled_dev *pidev)
{
 int x, y, z;

 lis3lv02d_get_xyz(&lis3_dev, &x, &y, &z);
 input_report_abs(pidev->input, ABS_X, x - lis3_dev.xcalib);
 input_report_abs(pidev->input, ABS_Y, y - lis3_dev.ycalib);
 input_report_abs(pidev->input, ABS_Z, z - lis3_dev.zcalib);
}
