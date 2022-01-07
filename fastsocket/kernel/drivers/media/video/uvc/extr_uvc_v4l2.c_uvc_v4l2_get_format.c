
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int width; int bytesperline; scalar_t__ priv; int colorspace; int sizeimage; int field; int height; int pixelformat; } ;
struct TYPE_6__ {TYPE_2__ pix; } ;
struct v4l2_format {scalar_t__ type; TYPE_3__ fmt; } ;
struct TYPE_4__ {int dwMaxVideoFrameSize; } ;
struct uvc_streaming {scalar_t__ type; int mutex; TYPE_1__ ctrl; struct uvc_frame* cur_frame; struct uvc_format* cur_format; } ;
struct uvc_frame {int wWidth; int wHeight; } ;
struct uvc_format {int bpp; int colorspace; int fcc; } ;


 int EINVAL ;
 int V4L2_FIELD_NONE ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int uvc_v4l2_get_format(struct uvc_streaming *stream,
 struct v4l2_format *fmt)
{
 struct uvc_format *format;
 struct uvc_frame *frame;
 int ret = 0;

 if (fmt->type != stream->type)
  return -EINVAL;

 mutex_lock(&stream->mutex);
 format = stream->cur_format;
 frame = stream->cur_frame;

 if (format == ((void*)0) || frame == ((void*)0)) {
  ret = -EINVAL;
  goto done;
 }

 fmt->fmt.pix.pixelformat = format->fcc;
 fmt->fmt.pix.width = frame->wWidth;
 fmt->fmt.pix.height = frame->wHeight;
 fmt->fmt.pix.field = V4L2_FIELD_NONE;
 fmt->fmt.pix.bytesperline = format->bpp * frame->wWidth / 8;
 fmt->fmt.pix.sizeimage = stream->ctrl.dwMaxVideoFrameSize;
 fmt->fmt.pix.colorspace = format->colorspace;
 fmt->fmt.pix.priv = 0;

done:
 mutex_unlock(&stream->mutex);
 return ret;
}
