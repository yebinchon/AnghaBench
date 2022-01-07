
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_captureparm {int timeperframe; int capability; } ;
struct TYPE_2__ {struct v4l2_captureparm capture; } ;
struct v4l2_streamparm {scalar_t__ type; TYPE_1__ parm; } ;
struct v4l2_int_device {struct tcm825x_sensor* priv; } ;
struct tcm825x_sensor {int timeperframe; } ;


 int EINVAL ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int V4L2_CAP_TIMEPERFRAME ;
 int memset (struct v4l2_streamparm*,int ,int) ;

__attribute__((used)) static int ioctl_g_parm(struct v4l2_int_device *s,
        struct v4l2_streamparm *a)
{
 struct tcm825x_sensor *sensor = s->priv;
 struct v4l2_captureparm *cparm = &a->parm.capture;

 if (a->type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
  return -EINVAL;

 memset(a, 0, sizeof(*a));
 a->type = V4L2_BUF_TYPE_VIDEO_CAPTURE;

 cparm->capability = V4L2_CAP_TIMEPERFRAME;
 cparm->timeperframe = sensor->timeperframe;

 return 0;
}
