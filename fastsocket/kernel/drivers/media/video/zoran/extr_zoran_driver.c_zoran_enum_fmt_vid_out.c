
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zoran_fh {struct zoran* zr; } ;
struct zoran {int dummy; } ;
struct v4l2_fmtdesc {int dummy; } ;
struct file {int dummy; } ;


 int ZORAN_FORMAT_PLAYBACK ;
 int zoran_enum_fmt (struct zoran*,struct v4l2_fmtdesc*,int ) ;

__attribute__((used)) static int zoran_enum_fmt_vid_out(struct file *file, void *__fh,
         struct v4l2_fmtdesc *f)
{
 struct zoran_fh *fh = __fh;
 struct zoran *zr = fh->zr;

 return zoran_enum_fmt(zr, f, ZORAN_FORMAT_PLAYBACK);
}
