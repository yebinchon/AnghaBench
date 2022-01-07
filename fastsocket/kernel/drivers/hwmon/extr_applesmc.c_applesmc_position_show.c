
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
typedef int s16 ;


 int PAGE_SIZE ;
 int SENSOR_X ;
 int SENSOR_Y ;
 int SENSOR_Z ;
 int applesmc_lock ;
 int applesmc_read_motion_sensor (int ,int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snprintf (char*,int ,char*,int,int,int) ;

__attribute__((used)) static ssize_t applesmc_position_show(struct device *dev,
       struct device_attribute *attr, char *buf)
{
 int ret;
 s16 x, y, z;

 mutex_lock(&applesmc_lock);

 ret = applesmc_read_motion_sensor(SENSOR_X, &x);
 if (ret)
  goto out;
 ret = applesmc_read_motion_sensor(SENSOR_Y, &y);
 if (ret)
  goto out;
 ret = applesmc_read_motion_sensor(SENSOR_Z, &z);
 if (ret)
  goto out;

out:
 mutex_unlock(&applesmc_lock);
 if (ret)
  return ret;
 else
  return snprintf(buf, PAGE_SIZE, "(%d,%d,%d)\n", x, y, z);
}
