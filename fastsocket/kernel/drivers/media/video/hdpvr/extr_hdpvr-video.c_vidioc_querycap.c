
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_capability {int capabilities; int version; int bus_info; int card; int driver; } ;
struct hdpvr_device {int udev; } ;
struct file {int dummy; } ;


 int HDPVR_VERSION ;
 int V4L2_CAP_AUDIO ;
 int V4L2_CAP_READWRITE ;
 int V4L2_CAP_VIDEO_CAPTURE ;
 int strcpy (int ,char*) ;
 int usb_make_path (int ,int ,int) ;
 struct hdpvr_device* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_querycap(struct file *file, void *priv,
      struct v4l2_capability *cap)
{
 struct hdpvr_device *dev = video_drvdata(file);

 strcpy(cap->driver, "hdpvr");
 strcpy(cap->card, "Hauppauge HD PVR");
 usb_make_path(dev->udev, cap->bus_info, sizeof(cap->bus_info));
 cap->version = HDPVR_VERSION;
 cap->capabilities = V4L2_CAP_VIDEO_CAPTURE |
    V4L2_CAP_AUDIO |
    V4L2_CAP_READWRITE;
 return 0;
}
