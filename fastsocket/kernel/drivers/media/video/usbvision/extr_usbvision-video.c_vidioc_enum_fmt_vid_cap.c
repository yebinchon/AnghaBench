
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_fmtdesc {int index; int pixelformat; int description; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int format; int desc; } ;


 int EINVAL ;
 int USBVISION_SUPPORTED_PALETTES ;
 int strcpy (int ,int ) ;
 TYPE_1__* usbvision_v4l2_format ;

__attribute__((used)) static int vidioc_enum_fmt_vid_cap(struct file *file, void *priv,
     struct v4l2_fmtdesc *vfd)
{
 if (vfd->index >= USBVISION_SUPPORTED_PALETTES - 1)
  return -EINVAL;
 strcpy(vfd->description, usbvision_v4l2_format[vfd->index].desc);
 vfd->pixelformat = usbvision_v4l2_format[vfd->index].format;
 return 0;
}
