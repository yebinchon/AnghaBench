
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct zoran_fh {struct zoran* zr; } ;
struct zoran {int resource_lock; } ;
struct TYPE_4__ {scalar_t__ pixelformat; int height; int width; } ;
struct TYPE_5__ {TYPE_1__ pix; } ;
struct v4l2_format {TYPE_2__ fmt; } ;
struct file {int dummy; } ;
struct TYPE_6__ {scalar_t__ fourcc; int depth; } ;


 int BUZ_MAX_HEIGHT ;
 int BUZ_MAX_WIDTH ;
 int BUZ_MIN_HEIGHT ;
 int BUZ_MIN_WIDTH ;
 int DIV_ROUND_UP (int ,int) ;
 int EINVAL ;
 int NUM_FORMATS ;
 scalar_t__ V4L2_PIX_FMT_MJPEG ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int v4l_bound_align_image (int *,int ,int ,int,int *,int ,int ,int ,int ) ;
 TYPE_3__* zoran_formats ;
 int zoran_try_fmt_vid_out (struct file*,struct zoran_fh*,struct v4l2_format*) ;

__attribute__((used)) static int zoran_try_fmt_vid_cap(struct file *file, void *__fh,
     struct v4l2_format *fmt)
{
 struct zoran_fh *fh = __fh;
 struct zoran *zr = fh->zr;
 int bpp;
 int i;

 if (fmt->fmt.pix.pixelformat == V4L2_PIX_FMT_MJPEG)
  return zoran_try_fmt_vid_out(file, fh, fmt);

 mutex_lock(&zr->resource_lock);

 for (i = 0; i < NUM_FORMATS; i++)
  if (zoran_formats[i].fourcc == fmt->fmt.pix.pixelformat)
   break;

 if (i == NUM_FORMATS) {
  mutex_unlock(&zr->resource_lock);
  return -EINVAL;
 }

 bpp = DIV_ROUND_UP(zoran_formats[i].depth, 8);
 v4l_bound_align_image(
  &fmt->fmt.pix.width, BUZ_MIN_WIDTH, BUZ_MAX_WIDTH, bpp == 2 ? 1 : 2,
  &fmt->fmt.pix.height, BUZ_MIN_HEIGHT, BUZ_MAX_HEIGHT, 0, 0);
 mutex_unlock(&zr->resource_lock);

 return 0;
}
