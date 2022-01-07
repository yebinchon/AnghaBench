
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_frmivalenum {int dummy; } ;
struct file {int dummy; } ;
struct cafe_camera {int s_mutex; } ;


 int enum_frameintervals ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sensor_call (struct cafe_camera*,int ,int ,struct v4l2_frmivalenum*) ;
 int video ;

__attribute__((used)) static int cafe_vidioc_enum_frameintervals(struct file *filp, void *priv,
  struct v4l2_frmivalenum *interval)
{
 struct cafe_camera *cam = priv;
 int ret;

 mutex_lock(&cam->s_mutex);
 ret = sensor_call(cam, video, enum_frameintervals, interval);
 mutex_unlock(&cam->s_mutex);
 return ret;
}
