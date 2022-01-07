
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int img_width; int HorDcm; int img_height; int VerDcm; int TmpDcm; scalar_t__ odd_even; } ;
struct zoran_fh {TYPE_3__ jpg_settings; struct zoran* zr; } ;
struct zoran {int resource_lock; } ;
struct TYPE_4__ {int width; int height; int colorspace; scalar_t__ bytesperline; int field; int pixelformat; int sizeimage; } ;
struct TYPE_5__ {TYPE_1__ pix; } ;
struct v4l2_format {TYPE_2__ fmt; } ;
struct file {int dummy; } ;


 int V4L2_COLORSPACE_SMPTE170M ;
 int V4L2_FIELD_BOTTOM ;
 int V4L2_FIELD_SEQ_BT ;
 int V4L2_FIELD_SEQ_TB ;
 int V4L2_FIELD_TOP ;
 int V4L2_PIX_FMT_MJPEG ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int zoran_v4l2_calc_bufsize (TYPE_3__*) ;

__attribute__((used)) static int zoran_g_fmt_vid_out(struct file *file, void *__fh,
     struct v4l2_format *fmt)
{
 struct zoran_fh *fh = __fh;
 struct zoran *zr = fh->zr;

 mutex_lock(&zr->resource_lock);

 fmt->fmt.pix.width = fh->jpg_settings.img_width / fh->jpg_settings.HorDcm;
 fmt->fmt.pix.height = fh->jpg_settings.img_height * 2 /
  (fh->jpg_settings.VerDcm * fh->jpg_settings.TmpDcm);
 fmt->fmt.pix.sizeimage = zoran_v4l2_calc_bufsize(&fh->jpg_settings);
 fmt->fmt.pix.pixelformat = V4L2_PIX_FMT_MJPEG;
 if (fh->jpg_settings.TmpDcm == 1)
  fmt->fmt.pix.field = (fh->jpg_settings.odd_even ?
    V4L2_FIELD_SEQ_TB : V4L2_FIELD_SEQ_BT);
 else
  fmt->fmt.pix.field = (fh->jpg_settings.odd_even ?
    V4L2_FIELD_TOP : V4L2_FIELD_BOTTOM);
 fmt->fmt.pix.bytesperline = 0;
 fmt->fmt.pix.colorspace = V4L2_COLORSPACE_SMPTE170M;

 mutex_unlock(&zr->resource_lock);
 return 0;
}
