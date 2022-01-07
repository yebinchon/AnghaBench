
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_frequency {int frequency; int type; scalar_t__ tuner; } ;
struct usb_usbvision {int freq; scalar_t__ radio; } ;
struct file {int dummy; } ;


 int V4L2_TUNER_ANALOG_TV ;
 int V4L2_TUNER_RADIO ;
 struct usb_usbvision* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_g_frequency(struct file *file, void *priv,
    struct v4l2_frequency *freq)
{
 struct usb_usbvision *usbvision = video_drvdata(file);

 freq->tuner = 0;
 if (usbvision->radio)
  freq->type = V4L2_TUNER_RADIO;
 else
  freq->type = V4L2_TUNER_ANALOG_TV;
 freq->frequency = usbvision->freq;

 return 0;
}
