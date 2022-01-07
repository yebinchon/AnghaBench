
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct TYPE_4__ {int denominator; int numerator; } ;
struct v4l2_captureparm {TYPE_2__ timeperframe; int capability; } ;
struct TYPE_3__ {struct v4l2_captureparm capture; } ;
struct v4l2_streamparm {scalar_t__ type; TYPE_1__ parm; } ;


 int EINVAL ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int V4L2_CAP_TIMEPERFRAME ;
 int calc_fps (struct v4l2_subdev*,int *,int *) ;
 int memset (struct v4l2_captureparm*,int ,int) ;

__attribute__((used)) static int mt9v011_g_parm(struct v4l2_subdev *sd, struct v4l2_streamparm *parms)
{
 struct v4l2_captureparm *cp = &parms->parm.capture;

 if (parms->type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
  return -EINVAL;

 memset(cp, 0, sizeof(struct v4l2_captureparm));
 cp->capability = V4L2_CAP_TIMEPERFRAME;
 calc_fps(sd,
   &cp->timeperframe.numerator,
   &cp->timeperframe.denominator);

 return 0;
}
