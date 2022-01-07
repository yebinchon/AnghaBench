
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_audio {int name; } ;
struct usb_usbvision {scalar_t__ radio; } ;
struct file {int dummy; } ;


 int strcpy (int ,char*) ;
 struct usb_usbvision* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_g_audio(struct file *file, void *priv, struct v4l2_audio *a)
{
 struct usb_usbvision *usbvision = video_drvdata(file);

 if (usbvision->radio)
  strcpy(a->name, "Radio");
 else
  strcpy(a->name, "TV");

 return 0;
}
