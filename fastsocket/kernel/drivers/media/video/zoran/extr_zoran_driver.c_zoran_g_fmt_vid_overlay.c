
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int width; int height; int y; int x; } ;
struct zoran_fh {TYPE_2__ overlay_settings; struct zoran* zr; } ;
struct zoran {int resource_lock; } ;
struct TYPE_5__ {int width; int height; int top; int left; } ;
struct TYPE_7__ {int field; TYPE_1__ w; } ;
struct TYPE_8__ {TYPE_3__ win; } ;
struct v4l2_format {TYPE_4__ fmt; } ;
struct file {int dummy; } ;


 int BUZ_MAX_HEIGHT ;
 int V4L2_FIELD_INTERLACED ;
 int V4L2_FIELD_TOP ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int zoran_g_fmt_vid_overlay(struct file *file, void *__fh,
     struct v4l2_format *fmt)
{
 struct zoran_fh *fh = __fh;
 struct zoran *zr = fh->zr;

 mutex_lock(&zr->resource_lock);

 fmt->fmt.win.w.left = fh->overlay_settings.x;
 fmt->fmt.win.w.top = fh->overlay_settings.y;
 fmt->fmt.win.w.width = fh->overlay_settings.width;
 fmt->fmt.win.w.height = fh->overlay_settings.height;
 if (fh->overlay_settings.width * 2 > BUZ_MAX_HEIGHT)
  fmt->fmt.win.field = V4L2_FIELD_INTERLACED;
 else
  fmt->fmt.win.field = V4L2_FIELD_TOP;

 mutex_unlock(&zr->resource_lock);
 return 0;
}
