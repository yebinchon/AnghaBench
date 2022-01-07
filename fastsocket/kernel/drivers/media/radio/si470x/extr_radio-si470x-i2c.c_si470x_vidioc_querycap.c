
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_capability {int capabilities; int version; int card; int driver; } ;
struct file {int dummy; } ;


 int DRIVER_CARD ;
 int DRIVER_KERNEL_VERSION ;
 int DRIVER_NAME ;
 int V4L2_CAP_HW_FREQ_SEEK ;
 int V4L2_CAP_RADIO ;
 int V4L2_CAP_TUNER ;
 int strlcpy (int ,int ,int) ;

int si470x_vidioc_querycap(struct file *file, void *priv,
  struct v4l2_capability *capability)
{
 strlcpy(capability->driver, DRIVER_NAME, sizeof(capability->driver));
 strlcpy(capability->card, DRIVER_CARD, sizeof(capability->card));
 capability->version = DRIVER_KERNEL_VERSION;
 capability->capabilities = V4L2_CAP_HW_FREQ_SEEK |
  V4L2_CAP_TUNER | V4L2_CAP_RADIO;

 return 0;
}
