
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_int_device {int dummy; } ;
struct v4l2_fmtdesc {int index; int type; int pixelformat; int description; int flags; } ;
struct TYPE_2__ {int pixelformat; int description; int flags; } ;


 int EINVAL ;
 int TCM825X_NUM_CAPTURE_FORMATS ;

 int strlcpy (int ,int ,int) ;
 TYPE_1__* tcm825x_formats ;

__attribute__((used)) static int ioctl_enum_fmt_cap(struct v4l2_int_device *s,
       struct v4l2_fmtdesc *fmt)
{
 int index = fmt->index;

 switch (fmt->type) {
 case 128:
  if (index >= TCM825X_NUM_CAPTURE_FORMATS)
   return -EINVAL;
  break;

 default:
  return -EINVAL;
 }

 fmt->flags = tcm825x_formats[index].flags;
 strlcpy(fmt->description, tcm825x_formats[index].description,
  sizeof(fmt->description));
 fmt->pixelformat = tcm825x_formats[index].pixelformat;

 return 0;
}
