
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct zoran_fh {struct zoran* zr; } ;
struct zoran {int resource_lock; } ;
struct TYPE_4__ {scalar_t__ width; scalar_t__ height; } ;
struct TYPE_5__ {TYPE_1__ w; } ;
struct TYPE_6__ {TYPE_2__ win; } ;
struct v4l2_format {TYPE_3__ fmt; } ;
struct file {int dummy; } ;


 scalar_t__ BUZ_MAX_HEIGHT ;
 scalar_t__ BUZ_MAX_WIDTH ;
 scalar_t__ BUZ_MIN_HEIGHT ;
 scalar_t__ BUZ_MIN_WIDTH ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int zoran_try_fmt_vid_overlay(struct file *file, void *__fh,
     struct v4l2_format *fmt)
{
 struct zoran_fh *fh = __fh;
 struct zoran *zr = fh->zr;

 mutex_lock(&zr->resource_lock);

 if (fmt->fmt.win.w.width > BUZ_MAX_WIDTH)
  fmt->fmt.win.w.width = BUZ_MAX_WIDTH;
 if (fmt->fmt.win.w.width < BUZ_MIN_WIDTH)
  fmt->fmt.win.w.width = BUZ_MIN_WIDTH;
 if (fmt->fmt.win.w.height > BUZ_MAX_HEIGHT)
  fmt->fmt.win.w.height = BUZ_MAX_HEIGHT;
 if (fmt->fmt.win.w.height < BUZ_MIN_HEIGHT)
  fmt->fmt.win.w.height = BUZ_MIN_HEIGHT;

 mutex_unlock(&zr->resource_lock);
 return 0;
}
