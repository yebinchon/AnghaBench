
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_capability {int capabilities; int version; int bus_info; int card; int driver; } ;
struct si470x_device {int usbdev; } ;
struct file {int dummy; } ;


 int DRIVER_CARD ;
 int DRIVER_KERNEL_VERSION ;
 int DRIVER_NAME ;
 int V4L2_CAP_HW_FREQ_SEEK ;
 int V4L2_CAP_RADIO ;
 int V4L2_CAP_RDS_CAPTURE ;
 int V4L2_CAP_TUNER ;
 int strlcpy (int ,int ,int) ;
 int usb_make_path (int ,int ,int) ;
 struct si470x_device* video_drvdata (struct file*) ;

int si470x_vidioc_querycap(struct file *file, void *priv,
  struct v4l2_capability *capability)
{
 struct si470x_device *radio = video_drvdata(file);

 strlcpy(capability->driver, DRIVER_NAME, sizeof(capability->driver));
 strlcpy(capability->card, DRIVER_CARD, sizeof(capability->card));
 usb_make_path(radio->usbdev, capability->bus_info,
   sizeof(capability->bus_info));
 capability->version = DRIVER_KERNEL_VERSION;
 capability->capabilities = V4L2_CAP_HW_FREQ_SEEK |
  V4L2_CAP_TUNER | V4L2_CAP_RADIO | V4L2_CAP_RDS_CAPTURE;

 return 0;
}
