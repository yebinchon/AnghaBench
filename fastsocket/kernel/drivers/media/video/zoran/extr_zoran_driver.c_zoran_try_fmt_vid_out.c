
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct zoran_jpg_settings {int TmpDcm; int img_height; int VerDcm; int img_width; int HorDcm; int field_per_buff; int img_x; scalar_t__ odd_even; scalar_t__ decimation; } ;
struct zoran_fh {struct zoran_jpg_settings jpg_settings; struct zoran* zr; } ;
struct zoran {int resource_lock; } ;
struct TYPE_3__ {scalar_t__ pixelformat; int height; int width; int colorspace; scalar_t__ bytesperline; int sizeimage; int field; } ;
struct TYPE_4__ {TYPE_1__ pix; } ;
struct v4l2_format {TYPE_2__ fmt; } ;
struct file {int dummy; } ;


 int BUZ_MAX_HEIGHT ;
 int BUZ_MAX_WIDTH ;
 int EINVAL ;
 int V4L2_COLORSPACE_SMPTE170M ;
 int V4L2_FIELD_BOTTOM ;
 int V4L2_FIELD_SEQ_BT ;
 int V4L2_FIELD_SEQ_TB ;
 int V4L2_FIELD_TOP ;
 scalar_t__ V4L2_PIX_FMT_MJPEG ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int zoran_check_jpg_settings (struct zoran*,struct zoran_jpg_settings*,int) ;
 int zoran_v4l2_calc_bufsize (struct zoran_jpg_settings*) ;

__attribute__((used)) static int zoran_try_fmt_vid_out(struct file *file, void *__fh,
     struct v4l2_format *fmt)
{
 struct zoran_fh *fh = __fh;
 struct zoran *zr = fh->zr;
 struct zoran_jpg_settings settings;
 int res = 0;

 if (fmt->fmt.pix.pixelformat != V4L2_PIX_FMT_MJPEG)
  return -EINVAL;

 mutex_lock(&zr->resource_lock);
 settings = fh->jpg_settings;


 if ((fmt->fmt.pix.height * 2) > BUZ_MAX_HEIGHT)
  settings.TmpDcm = 1;
 else
  settings.TmpDcm = 2;
 settings.decimation = 0;
 if (fmt->fmt.pix.height <= fh->jpg_settings.img_height / 2)
  settings.VerDcm = 2;
 else
  settings.VerDcm = 1;
 if (fmt->fmt.pix.width <= fh->jpg_settings.img_width / 4)
  settings.HorDcm = 4;
 else if (fmt->fmt.pix.width <= fh->jpg_settings.img_width / 2)
  settings.HorDcm = 2;
 else
  settings.HorDcm = 1;
 if (settings.TmpDcm == 1)
  settings.field_per_buff = 2;
 else
  settings.field_per_buff = 1;

 if (settings.HorDcm > 1) {
  settings.img_x = (BUZ_MAX_WIDTH == 720) ? 8 : 0;
  settings.img_width = (BUZ_MAX_WIDTH == 720) ? 704 : BUZ_MAX_WIDTH;
 } else {
  settings.img_x = 0;
  settings.img_width = BUZ_MAX_WIDTH;
 }


 res = zoran_check_jpg_settings(zr, &settings, 1);
 if (res)
  goto tryfmt_unlock_and_return;


 fmt->fmt.pix.width = settings.img_width / settings.HorDcm;
 fmt->fmt.pix.height = settings.img_height * 2 /
  (settings.TmpDcm * settings.VerDcm);
 if (settings.TmpDcm == 1)
  fmt->fmt.pix.field = (fh->jpg_settings.odd_even ?
    V4L2_FIELD_SEQ_TB : V4L2_FIELD_SEQ_BT);
 else
  fmt->fmt.pix.field = (fh->jpg_settings.odd_even ?
    V4L2_FIELD_TOP : V4L2_FIELD_BOTTOM);

 fmt->fmt.pix.sizeimage = zoran_v4l2_calc_bufsize(&settings);
 fmt->fmt.pix.bytesperline = 0;
 fmt->fmt.pix.colorspace = V4L2_COLORSPACE_SMPTE170M;
tryfmt_unlock_and_return:
 mutex_unlock(&zr->resource_lock);
 return res;
}
