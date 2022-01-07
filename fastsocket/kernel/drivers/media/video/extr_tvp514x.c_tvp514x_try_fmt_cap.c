
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct v4l2_pix_format {int width; int height; scalar_t__ pixelformat; int bytesperline; int sizeimage; scalar_t__ priv; int colorspace; int field; } ;
struct TYPE_4__ {struct v4l2_pix_format pix; } ;
struct v4l2_format {scalar_t__ type; TYPE_1__ fmt; } ;
struct tvp514x_decoder {int current_std; int num_fmts; TYPE_3__* fmt_list; TYPE_2__* std_list; } ;
typedef enum tvp514x_std { ____Placeholder_tvp514x_std } tvp514x_std ;
struct TYPE_6__ {scalar_t__ pixelformat; int description; } ;
struct TYPE_5__ {int width; int height; } ;


 int EINVAL ;
 int STD_INVALID ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int V4L2_COLORSPACE_SMPTE170M ;
 int V4L2_FIELD_INTERLACED ;
 int debug ;
 struct tvp514x_decoder* to_decoder (struct v4l2_subdev*) ;
 int tvp514x_get_current_std (struct v4l2_subdev*) ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*,int ,int,int,int) ;

__attribute__((used)) static int
tvp514x_try_fmt_cap(struct v4l2_subdev *sd, struct v4l2_format *f)
{
 struct tvp514x_decoder *decoder = to_decoder(sd);
 int ifmt;
 struct v4l2_pix_format *pix;
 enum tvp514x_std current_std;

 if (f == ((void*)0))
  return -EINVAL;

 if (f->type != V4L2_BUF_TYPE_VIDEO_CAPTURE)

  f->type = V4L2_BUF_TYPE_VIDEO_CAPTURE;

 pix = &f->fmt.pix;


 current_std = tvp514x_get_current_std(sd);
 if (current_std == STD_INVALID)
  return -EINVAL;

 decoder->current_std = current_std;
 pix->width = decoder->std_list[current_std].width;
 pix->height = decoder->std_list[current_std].height;

 for (ifmt = 0; ifmt < decoder->num_fmts; ifmt++) {
  if (pix->pixelformat ==
   decoder->fmt_list[ifmt].pixelformat)
   break;
 }
 if (ifmt == decoder->num_fmts)

  ifmt = 0;
 pix->pixelformat = decoder->fmt_list[ifmt].pixelformat;

 pix->field = V4L2_FIELD_INTERLACED;
 pix->bytesperline = pix->width * 2;
 pix->sizeimage = pix->bytesperline * pix->height;
 pix->colorspace = V4L2_COLORSPACE_SMPTE170M;
 pix->priv = 0;

 v4l2_dbg(1, debug, sd, "Try FMT: pixelformat - %s, bytesperline - %d"
   "Width - %d, Height - %d",
   decoder->fmt_list[ifmt].description, pix->bytesperline,
   pix->width, pix->height);
 return 0;
}
