
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zoran {int dummy; } ;
struct v4l2_fmtdesc {int flags; int pixelformat; int description; int index; } ;
struct TYPE_2__ {int flags; int fourcc; int name; } ;


 int EINVAL ;
 unsigned int NUM_FORMATS ;
 int V4L2_FMT_FLAG_COMPRESSED ;
 int ZORAN_FORMAT_COMPRESSED ;
 int strncpy (int ,int ,int) ;
 TYPE_1__* zoran_formats ;

__attribute__((used)) static int zoran_enum_fmt(struct zoran *zr, struct v4l2_fmtdesc *fmt, int flag)
{
 unsigned int num, i;

 for (num = i = 0; i < NUM_FORMATS; i++) {
  if (zoran_formats[i].flags & flag && num++ == fmt->index) {
   strncpy(fmt->description, zoran_formats[i].name,
    sizeof(fmt->description) - 1);

   fmt->pixelformat = zoran_formats[i].fourcc;
   if (zoran_formats[i].flags & ZORAN_FORMAT_COMPRESSED)
    fmt->flags |= V4L2_FMT_FLAG_COMPRESSED;
   return 0;
  }
 }
 return -EINVAL;
}
