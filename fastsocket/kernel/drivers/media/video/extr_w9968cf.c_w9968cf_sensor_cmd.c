
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w9968cf_device {int sensor_sd; } ;


 int EPERM ;
 int core ;
 int ioctl ;
 int v4l2_subdev_call (int ,int ,int ,unsigned int,void*) ;

__attribute__((used)) static int
w9968cf_sensor_cmd(struct w9968cf_device* cam, unsigned int cmd, void* arg)
{
 int rc;

 rc = v4l2_subdev_call(cam->sensor_sd, core, ioctl, cmd, arg);

 return (rc < 0 && rc != -EPERM) ? rc : 0;
}
