
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_tuner {int name; int type; scalar_t__ index; } ;
struct usb_usbvision {scalar_t__ radio; int have_tuner; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int V4L2_TUNER_RADIO ;
 int call_all (struct usb_usbvision*,int ,int ,struct v4l2_tuner*) ;
 int g_tuner ;
 int strcpy (int ,char*) ;
 int tuner ;
 struct usb_usbvision* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_g_tuner(struct file *file, void *priv,
    struct v4l2_tuner *vt)
{
 struct usb_usbvision *usbvision = video_drvdata(file);

 if (!usbvision->have_tuner || vt->index)
  return -EINVAL;
 if (usbvision->radio) {
  strcpy(vt->name, "Radio");
  vt->type = V4L2_TUNER_RADIO;
 } else {
  strcpy(vt->name, "Television");
 }

 call_all(usbvision, tuner, g_tuner, vt);

 return 0;
}
