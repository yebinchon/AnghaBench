
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_polled_dev {struct input_dev* input; } ;
struct input_dev {int dummy; } ;
typedef scalar_t__ s16 ;


 int ABS_X ;
 int ABS_Y ;
 int SENSOR_X ;
 int SENSOR_Y ;
 int applesmc_lock ;
 scalar_t__ applesmc_read_motion_sensor (int ,scalar_t__*) ;
 int input_report_abs (struct input_dev*,int ,scalar_t__) ;
 int input_sync (struct input_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ rest_x ;
 scalar_t__ rest_y ;

__attribute__((used)) static void applesmc_idev_poll(struct input_polled_dev *dev)
{
 struct input_dev *idev = dev->input;
 s16 x, y;

 mutex_lock(&applesmc_lock);

 if (applesmc_read_motion_sensor(SENSOR_X, &x))
  goto out;
 if (applesmc_read_motion_sensor(SENSOR_Y, &y))
  goto out;

 x = -x;
 input_report_abs(idev, ABS_X, x - rest_x);
 input_report_abs(idev, ABS_Y, y - rest_y);
 input_sync(idev);

out:
 mutex_unlock(&applesmc_lock);
}
