
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_pix_format {int height; int sizeimage; int bytesperline; int pixelformat; scalar_t__ priv; int field; int colorspace; int width; } ;
struct TYPE_3__ {struct v4l2_pix_format pix; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct ivtv_open_id {scalar_t__ type; struct ivtv* itv; } ;
struct TYPE_4__ {int height; int width; } ;
struct ivtv {TYPE_2__ cxhdl; } ;
struct file {int dummy; } ;


 scalar_t__ IVTV_ENC_STREAM_TYPE_YUV ;
 int V4L2_COLORSPACE_SMPTE170M ;
 int V4L2_FIELD_INTERLACED ;
 int V4L2_PIX_FMT_HM12 ;
 int V4L2_PIX_FMT_MPEG ;

__attribute__((used)) static int ivtv_g_fmt_vid_cap(struct file *file, void *fh, struct v4l2_format *fmt)
{
 struct ivtv_open_id *id = fh;
 struct ivtv *itv = id->itv;
 struct v4l2_pix_format *pixfmt = &fmt->fmt.pix;

 pixfmt->width = itv->cxhdl.width;
 pixfmt->height = itv->cxhdl.height;
 pixfmt->colorspace = V4L2_COLORSPACE_SMPTE170M;
 pixfmt->field = V4L2_FIELD_INTERLACED;
 pixfmt->priv = 0;
 if (id->type == IVTV_ENC_STREAM_TYPE_YUV) {
  pixfmt->pixelformat = V4L2_PIX_FMT_HM12;

  pixfmt->sizeimage = pixfmt->height * 720 * 3 / 2;
  pixfmt->bytesperline = 720;
 } else {
  pixfmt->pixelformat = V4L2_PIX_FMT_MPEG;
  pixfmt->sizeimage = 128 * 1024;
  pixfmt->bytesperline = 0;
 }
 return 0;
}
