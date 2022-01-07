
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_control {int dummy; } ;
struct file {int dummy; } ;
struct cafe_camera {int s_mutex; } ;


 int core ;
 int g_ctrl ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sensor_call (struct cafe_camera*,int ,int ,struct v4l2_control*) ;

__attribute__((used)) static int cafe_vidioc_g_ctrl(struct file *filp, void *priv,
  struct v4l2_control *ctrl)
{
 struct cafe_camera *cam = priv;
 int ret;

 mutex_lock(&cam->s_mutex);
 ret = sensor_call(cam, core, g_ctrl, ctrl);
 mutex_unlock(&cam->s_mutex);
 return ret;
}
