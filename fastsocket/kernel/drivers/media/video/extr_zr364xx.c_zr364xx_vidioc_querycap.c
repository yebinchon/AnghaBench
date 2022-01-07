
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zr364xx_camera {TYPE_1__* udev; } ;
struct v4l2_capability {int capabilities; int version; int bus_info; int card; int driver; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int dev; int product; } ;


 int DRIVER_DESC ;
 int V4L2_CAP_READWRITE ;
 int V4L2_CAP_STREAMING ;
 int V4L2_CAP_VIDEO_CAPTURE ;
 int ZR364XX_VERSION_CODE ;
 int dev_name (int *) ;
 int strlcpy (int ,int ,int) ;
 struct zr364xx_camera* video_drvdata (struct file*) ;

__attribute__((used)) static int zr364xx_vidioc_querycap(struct file *file, void *priv,
       struct v4l2_capability *cap)
{
 struct zr364xx_camera *cam = video_drvdata(file);

 strlcpy(cap->driver, DRIVER_DESC, sizeof(cap->driver));
 strlcpy(cap->card, cam->udev->product, sizeof(cap->card));
 strlcpy(cap->bus_info, dev_name(&cam->udev->dev),
  sizeof(cap->bus_info));
 cap->version = ZR364XX_VERSION_CODE;
 cap->capabilities = V4L2_CAP_VIDEO_CAPTURE |
       V4L2_CAP_READWRITE |
       V4L2_CAP_STREAMING;

 return 0;
}
