
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_queryctrl {int dummy; } ;
struct file {int dummy; } ;
struct cafe_camera {int s_mutex; } ;


 int core ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int queryctrl ;
 int sensor_call (struct cafe_camera*,int ,int ,struct v4l2_queryctrl*) ;

__attribute__((used)) static int cafe_vidioc_queryctrl(struct file *filp, void *priv,
  struct v4l2_queryctrl *qc)
{
 struct cafe_camera *cam = priv;
 int ret;

 mutex_lock(&cam->s_mutex);
 ret = sensor_call(cam, core, queryctrl, qc);
 mutex_unlock(&cam->s_mutex);
 return ret;
}
