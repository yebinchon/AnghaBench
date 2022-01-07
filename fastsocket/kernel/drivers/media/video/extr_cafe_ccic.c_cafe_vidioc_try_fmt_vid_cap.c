
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_pix_format {int bytesperline; int width; int sizeimage; int height; int pixelformat; } ;
struct v4l2_mbus_framefmt {int dummy; } ;
struct TYPE_2__ {struct v4l2_pix_format pix; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct file {int dummy; } ;
struct cafe_format_struct {int bpp; int mbus_code; int pixelformat; } ;
struct cafe_camera {int s_mutex; } ;


 struct cafe_format_struct* cafe_find_format (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sensor_call (struct cafe_camera*,int ,int ,struct v4l2_mbus_framefmt*) ;
 int try_mbus_fmt ;
 int v4l2_fill_mbus_format (struct v4l2_mbus_framefmt*,struct v4l2_pix_format*,int ) ;
 int v4l2_fill_pix_format (struct v4l2_pix_format*,struct v4l2_mbus_framefmt*) ;
 int video ;

__attribute__((used)) static int cafe_vidioc_try_fmt_vid_cap(struct file *filp, void *priv,
  struct v4l2_format *fmt)
{
 struct cafe_camera *cam = priv;
 struct cafe_format_struct *f;
 struct v4l2_pix_format *pix = &fmt->fmt.pix;
 struct v4l2_mbus_framefmt mbus_fmt;
 int ret;

 f = cafe_find_format(pix->pixelformat);
 pix->pixelformat = f->pixelformat;
 v4l2_fill_mbus_format(&mbus_fmt, pix, f->mbus_code);
 mutex_lock(&cam->s_mutex);
 ret = sensor_call(cam, video, try_mbus_fmt, &mbus_fmt);
 mutex_unlock(&cam->s_mutex);
 v4l2_fill_pix_format(pix, &mbus_fmt);
 pix->bytesperline = pix->width * f->bpp;
 pix->sizeimage = pix->height * pix->bytesperline;
 return ret;
}
