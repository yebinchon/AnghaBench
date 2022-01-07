
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_fmtdesc {scalar_t__ index; int pixelformat; int description; int type; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int V4L2_BUF_TYPE_VIDEO_OUTPUT ;
 int V4L2_PIX_FMT_YUV422P ;
 int strcpy (int ,char*) ;
 int vpif_err (char*) ;

__attribute__((used)) static int vpif_enum_fmt_vid_out(struct file *file, void *priv,
     struct v4l2_fmtdesc *fmt)
{
 if (fmt->index != 0) {
  vpif_err("Invalid format index\n");
  return -EINVAL;
 }


 fmt->type = V4L2_BUF_TYPE_VIDEO_OUTPUT;
 strcpy(fmt->description, "YCbCr4:2:2 YC Planar");
 fmt->pixelformat = V4L2_PIX_FMT_YUV422P;

 return 0;
}
