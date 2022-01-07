
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_frequency {int frequency; scalar_t__ tuner; } ;
struct usb_usbvision {int freq; int have_tuner; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int call_all (struct usb_usbvision*,int ,int ,struct v4l2_frequency*) ;
 int s_frequency ;
 int tuner ;
 struct usb_usbvision* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_s_frequency(struct file *file, void *priv,
    struct v4l2_frequency *freq)
{
 struct usb_usbvision *usbvision = video_drvdata(file);


 if (!usbvision->have_tuner || freq->tuner)
  return -EINVAL;

 usbvision->freq = freq->frequency;
 call_all(usbvision, tuner, s_frequency, freq);

 return 0;
}
