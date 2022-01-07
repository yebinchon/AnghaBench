
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int readbuffers; } ;
struct TYPE_4__ {TYPE_1__ capture; } ;
struct v4l2_streamparm {TYPE_2__ parm; } ;
struct file {int dummy; } ;
struct cafe_camera {int s_mutex; } ;


 int g_parm ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int n_dma_bufs ;
 int sensor_call (struct cafe_camera*,int ,int ,struct v4l2_streamparm*) ;
 int video ;

__attribute__((used)) static int cafe_vidioc_g_parm(struct file *filp, void *priv,
  struct v4l2_streamparm *parms)
{
 struct cafe_camera *cam = priv;
 int ret;

 mutex_lock(&cam->s_mutex);
 ret = sensor_call(cam, video, g_parm, parms);
 mutex_unlock(&cam->s_mutex);
 parms->parm.capture.readbuffers = n_dma_bufs;
 return ret;
}
