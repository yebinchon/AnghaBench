
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
struct usb_usbvision {int ctl_input; int tvnorm_id; } ;
struct file {int dummy; } ;


 int call_all (struct usb_usbvision*,int ,int ,int ) ;
 int core ;
 int s_std ;
 int usbvision_muxsel (struct usb_usbvision*,int ) ;
 struct usb_usbvision* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_s_std(struct file *file, void *priv, v4l2_std_id *id)
{
 struct usb_usbvision *usbvision = video_drvdata(file);

 usbvision->tvnorm_id = *id;

 call_all(usbvision, core, s_std, usbvision->tvnorm_id);

 usbvision_muxsel(usbvision, usbvision->ctl_input);

 return 0;
}
