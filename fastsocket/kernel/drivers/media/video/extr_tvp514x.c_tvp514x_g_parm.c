
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct v4l2_captureparm {int timeperframe; int capability; } ;
struct TYPE_4__ {struct v4l2_captureparm capture; } ;
struct v4l2_streamparm {scalar_t__ type; TYPE_1__ parm; } ;
struct tvp514x_decoder {int current_std; TYPE_3__* std_list; } ;
typedef enum tvp514x_std { ____Placeholder_tvp514x_std } tvp514x_std ;
struct TYPE_5__ {int frameperiod; } ;
struct TYPE_6__ {TYPE_2__ standard; } ;


 int EINVAL ;
 int STD_INVALID ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int V4L2_CAP_TIMEPERFRAME ;
 int memset (struct v4l2_streamparm*,int ,int) ;
 struct tvp514x_decoder* to_decoder (struct v4l2_subdev*) ;
 int tvp514x_get_current_std (struct v4l2_subdev*) ;

__attribute__((used)) static int
tvp514x_g_parm(struct v4l2_subdev *sd, struct v4l2_streamparm *a)
{
 struct tvp514x_decoder *decoder = to_decoder(sd);
 struct v4l2_captureparm *cparm;
 enum tvp514x_std current_std;

 if (a == ((void*)0))
  return -EINVAL;

 if (a->type != V4L2_BUF_TYPE_VIDEO_CAPTURE)

  return -EINVAL;

 memset(a, 0, sizeof(*a));
 a->type = V4L2_BUF_TYPE_VIDEO_CAPTURE;


 current_std = tvp514x_get_current_std(sd);
 if (current_std == STD_INVALID)
  return -EINVAL;

 decoder->current_std = current_std;

 cparm = &a->parm.capture;
 cparm->capability = V4L2_CAP_TIMEPERFRAME;
 cparm->timeperframe =
  decoder->std_list[current_std].standard.frameperiod;

 return 0;
}
