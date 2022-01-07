
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct TYPE_3__ {int numerator; int denominator; } ;
struct v4l2_captureparm {TYPE_1__ timeperframe; int capability; } ;
struct TYPE_4__ {struct v4l2_captureparm capture; } ;
struct v4l2_streamparm {scalar_t__ type; TYPE_2__ parm; } ;
struct ov7670_info {int clock_speed; int clkrc; } ;


 int CLK_EXT ;
 int CLK_SCALE ;
 int EINVAL ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int V4L2_CAP_TIMEPERFRAME ;
 int memset (struct v4l2_captureparm*,int ,int) ;
 struct ov7670_info* to_state (struct v4l2_subdev*) ;

__attribute__((used)) static int ov7670_g_parm(struct v4l2_subdev *sd, struct v4l2_streamparm *parms)
{
 struct v4l2_captureparm *cp = &parms->parm.capture;
 struct ov7670_info *info = to_state(sd);

 if (parms->type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
  return -EINVAL;

 memset(cp, 0, sizeof(struct v4l2_captureparm));
 cp->capability = V4L2_CAP_TIMEPERFRAME;
 cp->timeperframe.numerator = 1;
 cp->timeperframe.denominator = info->clock_speed;
 if ((info->clkrc & CLK_EXT) == 0 && (info->clkrc & CLK_SCALE) > 1)
  cp->timeperframe.denominator /= (info->clkrc & CLK_SCALE);
 return 0;
}
