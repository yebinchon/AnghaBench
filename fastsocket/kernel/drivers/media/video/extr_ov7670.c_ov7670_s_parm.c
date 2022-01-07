
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct v4l2_fract {int numerator; int denominator; } ;
struct v4l2_captureparm {scalar_t__ extendedmode; struct v4l2_fract timeperframe; } ;
struct TYPE_2__ {struct v4l2_captureparm capture; } ;
struct v4l2_streamparm {scalar_t__ type; TYPE_1__ parm; } ;
struct ov7670_info {int clock_speed; int clkrc; } ;


 int CLK_SCALE ;
 int EINVAL ;
 int REG_CLKRC ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int ov7670_write (struct v4l2_subdev*,int ,int) ;
 struct ov7670_info* to_state (struct v4l2_subdev*) ;

__attribute__((used)) static int ov7670_s_parm(struct v4l2_subdev *sd, struct v4l2_streamparm *parms)
{
 struct v4l2_captureparm *cp = &parms->parm.capture;
 struct v4l2_fract *tpf = &cp->timeperframe;
 struct ov7670_info *info = to_state(sd);
 int div;

 if (parms->type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
  return -EINVAL;
 if (cp->extendedmode != 0)
  return -EINVAL;

 if (tpf->numerator == 0 || tpf->denominator == 0)
  div = 1;
 else
  div = (tpf->numerator * info->clock_speed) / tpf->denominator;
 if (div == 0)
  div = 1;
 else if (div > CLK_SCALE)
  div = CLK_SCALE;
 info->clkrc = (info->clkrc & 0x80) | div;
 tpf->numerator = 1;
 tpf->denominator = info->clock_speed / div;
 return ov7670_write(sd, REG_CLKRC, info->clkrc);
}
