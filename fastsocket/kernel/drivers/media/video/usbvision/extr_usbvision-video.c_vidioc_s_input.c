
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_usbvision {unsigned int video_inputs; int curheight; int curwidth; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int usbvision_muxsel (struct usb_usbvision*,unsigned int) ;
 int usbvision_set_input (struct usb_usbvision*) ;
 int usbvision_set_output (struct usb_usbvision*,int ,int ) ;
 struct usb_usbvision* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_s_input(struct file *file, void *priv, unsigned int input)
{
 struct usb_usbvision *usbvision = video_drvdata(file);

 if (input >= usbvision->video_inputs)
  return -EINVAL;

 usbvision_muxsel(usbvision, input);
 usbvision_set_input(usbvision);
 usbvision_set_output(usbvision,
        usbvision->curwidth,
        usbvision->curheight);
 return 0;
}
