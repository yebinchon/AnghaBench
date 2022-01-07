
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_tuner {scalar_t__ index; } ;
struct usb_usbvision {int have_tuner; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int call_all (struct usb_usbvision*,int ,int ,struct v4l2_tuner*) ;
 int s_tuner ;
 int tuner ;
 struct usb_usbvision* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_s_tuner(struct file *file, void *priv,
    struct v4l2_tuner *vt)
{
 struct usb_usbvision *usbvision = video_drvdata(file);


 if (!usbvision->have_tuner || vt->index)
  return -EINVAL;

 call_all(usbvision, tuner, s_tuner, vt);

 return 0;
}
