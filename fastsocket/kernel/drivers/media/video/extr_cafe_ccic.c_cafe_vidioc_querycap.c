
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_capability {int capabilities; int version; int card; int driver; } ;
struct file {int dummy; } ;


 int CAFE_VERSION ;
 int V4L2_CAP_READWRITE ;
 int V4L2_CAP_STREAMING ;
 int V4L2_CAP_VIDEO_CAPTURE ;
 int strcpy (int ,char*) ;

__attribute__((used)) static int cafe_vidioc_querycap(struct file *file, void *priv,
  struct v4l2_capability *cap)
{
 strcpy(cap->driver, "cafe_ccic");
 strcpy(cap->card, "cafe_ccic");
 cap->version = CAFE_VERSION;
 cap->capabilities = V4L2_CAP_VIDEO_CAPTURE |
  V4L2_CAP_READWRITE | V4L2_CAP_STREAMING;
 return 0;
}
