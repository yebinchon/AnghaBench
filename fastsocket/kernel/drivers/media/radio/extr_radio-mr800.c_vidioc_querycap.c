
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_capability {int capabilities; int version; int bus_info; int card; int driver; } ;
struct file {int dummy; } ;
struct amradio_device {int usbdev; } ;


 int RADIO_VERSION ;
 int V4L2_CAP_TUNER ;
 int strlcpy (int ,char*,int) ;
 int usb_make_path (int ,int ,int) ;
 struct amradio_device* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_querycap(struct file *file, void *priv,
     struct v4l2_capability *v)
{
 struct amradio_device *radio = video_drvdata(file);

 strlcpy(v->driver, "radio-mr800", sizeof(v->driver));
 strlcpy(v->card, "AverMedia MR 800 USB FM Radio", sizeof(v->card));
 usb_make_path(radio->usbdev, v->bus_info, sizeof(v->bus_info));
 v->version = RADIO_VERSION;
 v->capabilities = V4L2_CAP_TUNER;
 return 0;
}
