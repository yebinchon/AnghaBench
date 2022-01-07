
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct v4l2_fmtdesc {int index; scalar_t__ type; } ;
struct tvp514x_decoder {int num_fmts; TYPE_1__* fmt_list; } ;
struct TYPE_2__ {int description; int index; } ;


 int EINVAL ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int debug ;
 int memcpy (struct v4l2_fmtdesc*,TYPE_1__*,int) ;
 struct tvp514x_decoder* to_decoder (struct v4l2_subdev*) ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*,int ,int ) ;

__attribute__((used)) static int
tvp514x_enum_fmt_cap(struct v4l2_subdev *sd, struct v4l2_fmtdesc *fmt)
{
 struct tvp514x_decoder *decoder = to_decoder(sd);
 int index;

 if (fmt == ((void*)0))
  return -EINVAL;

 index = fmt->index;
 if ((index >= decoder->num_fmts) || (index < 0))

  return -EINVAL;

 if (fmt->type != V4L2_BUF_TYPE_VIDEO_CAPTURE)

  return -EINVAL;

 memcpy(fmt, &decoder->fmt_list[index],
  sizeof(struct v4l2_fmtdesc));

 v4l2_dbg(1, debug, sd, "Current FMT: index - %d (%s)",
   decoder->fmt_list[index].index,
   decoder->fmt_list[index].description);
 return 0;
}
