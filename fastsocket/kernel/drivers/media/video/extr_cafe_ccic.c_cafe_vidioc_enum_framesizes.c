
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_frmsizeenum {int dummy; } ;
struct file {int dummy; } ;
struct cafe_camera {int s_mutex; } ;


 int enum_framesizes ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sensor_call (struct cafe_camera*,int ,int ,struct v4l2_frmsizeenum*) ;
 int video ;

__attribute__((used)) static int cafe_vidioc_enum_framesizes(struct file *filp, void *priv,
  struct v4l2_frmsizeenum *sizes)
{
 struct cafe_camera *cam = priv;
 int ret;

 mutex_lock(&cam->s_mutex);
 ret = sensor_call(cam, video, enum_framesizes, sizes);
 mutex_unlock(&cam->s_mutex);
 return ret;
}
