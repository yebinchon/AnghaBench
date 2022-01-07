
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_fmtdesc {int index; int pixelformat; int* description; int flags; } ;
struct TYPE_4__ {int nmodes; TYPE_1__* cam_mode; } ;
struct gspca_dev {TYPE_2__ cam; } ;
struct file {int dummy; } ;
typedef scalar_t__ __u32 ;
struct TYPE_3__ {scalar_t__ pixelformat; } ;


 int ARRAY_SIZE (scalar_t__*) ;
 int EINVAL ;
 int V4L2_FMT_FLAG_COMPRESSED ;
 scalar_t__ gspca_is_compressed (scalar_t__) ;

__attribute__((used)) static int vidioc_enum_fmt_vid_cap(struct file *file, void *priv,
    struct v4l2_fmtdesc *fmtdesc)
{
 struct gspca_dev *gspca_dev = priv;
 int i, j, index;
 __u32 fmt_tb[8];


 index = 0;
 j = 0;
 for (i = gspca_dev->cam.nmodes; --i >= 0; ) {
  fmt_tb[index] = gspca_dev->cam.cam_mode[i].pixelformat;
  j = 0;
  for (;;) {
   if (fmt_tb[j] == fmt_tb[index])
    break;
   j++;
  }
  if (j == index) {
   if (fmtdesc->index == index)
    break;
   index++;
   if (index >= ARRAY_SIZE(fmt_tb))
    return -EINVAL;
  }
 }
 if (i < 0)
  return -EINVAL;

 fmtdesc->pixelformat = fmt_tb[index];
 if (gspca_is_compressed(fmt_tb[index]))
  fmtdesc->flags = V4L2_FMT_FLAG_COMPRESSED;
 fmtdesc->description[0] = fmtdesc->pixelformat & 0xff;
 fmtdesc->description[1] = (fmtdesc->pixelformat >> 8) & 0xff;
 fmtdesc->description[2] = (fmtdesc->pixelformat >> 16) & 0xff;
 fmtdesc->description[3] = fmtdesc->pixelformat >> 24;
 fmtdesc->description[4] = '\0';
 return 0;
}
