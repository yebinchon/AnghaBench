
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct input_polled_dev {struct input_dev* input; } ;
struct input_dev {int dummy; } ;
typedef int s8 ;
struct TYPE_2__ {int lock; scalar_t__ zcalib; scalar_t__ ycalib; scalar_t__ xcalib; } ;


 int ABS_X ;
 int ABS_Y ;
 int ABS_Z ;
 TYPE_1__ ams_info ;
 int ams_sensors (int *,int *,int *) ;
 int input_report_abs (struct input_dev*,int ,int ) ;
 int input_sync (struct input_dev*) ;
 scalar_t__ invert ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void ams_idev_poll(struct input_polled_dev *dev)
{
 struct input_dev *idev = dev->input;
 s8 x, y, z;

 mutex_lock(&ams_info.lock);

 ams_sensors(&x, &y, &z);

 x -= ams_info.xcalib;
 y -= ams_info.ycalib;
 z -= ams_info.zcalib;

 input_report_abs(idev, ABS_X, invert ? -x : x);
 input_report_abs(idev, ABS_Y, invert ? -y : y);
 input_report_abs(idev, ABS_Z, z);

 input_sync(idev);

 mutex_unlock(&ams_info.lock);
}
