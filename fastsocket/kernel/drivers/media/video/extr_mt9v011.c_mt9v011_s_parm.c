
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_fract {int denominator; int numerator; } ;
struct v4l2_captureparm {scalar_t__ extendedmode; struct v4l2_fract timeperframe; } ;
struct TYPE_2__ {struct v4l2_captureparm capture; } ;
struct v4l2_streamparm {scalar_t__ type; TYPE_1__ parm; } ;


 int EINVAL ;
 int R0A_MT9V011_CLK_SPEED ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int calc_fps (struct v4l2_subdev*,int *,int *) ;
 int calc_speed (struct v4l2_subdev*,int ,int ) ;
 int debug ;
 int mt9v011_write (struct v4l2_subdev*,int ,int ) ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*,int ) ;

__attribute__((used)) static int mt9v011_s_parm(struct v4l2_subdev *sd, struct v4l2_streamparm *parms)
{
 struct v4l2_captureparm *cp = &parms->parm.capture;
 struct v4l2_fract *tpf = &cp->timeperframe;
 u16 speed;

 if (parms->type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
  return -EINVAL;
 if (cp->extendedmode != 0)
  return -EINVAL;

 speed = calc_speed(sd, tpf->numerator, tpf->denominator);

 mt9v011_write(sd, R0A_MT9V011_CLK_SPEED, speed);
 v4l2_dbg(1, debug, sd, "Setting speed to %d\n", speed);


 calc_fps(sd, &tpf->numerator, &tpf->denominator);

 return 0;
}
