
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_fmtdesc {int index; int pixelformat; int description; int flags; int type; } ;
struct camera_data {int dummy; } ;


 int EINVAL ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int V4L2_FMT_FLAG_COMPRESSED ;
 int V4L2_PIX_FMT_JPEG ;
 int V4L2_PIX_FMT_MJPEG ;
 int memset (struct v4l2_fmtdesc*,int ,int) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static int ioctl_enum_fmt(void *arg,struct camera_data *cam)
{
 struct v4l2_fmtdesc *f = arg;
 int index = f->index;

 if (index < 0 || index > 1)
        return -EINVAL;

 memset(f, 0, sizeof(*f));
 f->index = index;
 f->type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
 f->flags = V4L2_FMT_FLAG_COMPRESSED;
 switch(index) {
 case 0:
  strcpy(f->description, "MJPEG");
  f->pixelformat = V4L2_PIX_FMT_MJPEG;
  break;
 case 1:
  strcpy(f->description, "JPEG");
  f->pixelformat = V4L2_PIX_FMT_JPEG;
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
