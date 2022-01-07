
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_fract {int numerator; int denominator; } ;
struct v4l2_captureparm {int capability; struct v4l2_fract timeperframe; } ;
struct TYPE_2__ {struct v4l2_captureparm capture; } ;
struct v4l2_streamparm {TYPE_1__ parm; } ;
struct sd {int frame_rate; } ;
struct gspca_dev {int dummy; } ;


 int V4L2_CAP_TIMEPERFRAME ;

__attribute__((used)) static void sd_get_streamparm(struct gspca_dev *gspca_dev,
        struct v4l2_streamparm *parm)
{
 struct v4l2_captureparm *cp = &parm->parm.capture;
 struct v4l2_fract *tpf = &cp->timeperframe;
 struct sd *sd = (struct sd *) gspca_dev;

 cp->capability |= V4L2_CAP_TIMEPERFRAME;
 tpf->numerator = 1;
 tpf->denominator = sd->frame_rate;
}
