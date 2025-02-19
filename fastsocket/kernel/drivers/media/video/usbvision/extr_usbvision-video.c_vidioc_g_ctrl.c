
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_control {int dummy; } ;
struct usb_usbvision {int dummy; } ;
struct file {int dummy; } ;


 int call_all (struct usb_usbvision*,int ,int ,struct v4l2_control*) ;
 int core ;
 int g_ctrl ;
 struct usb_usbvision* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_g_ctrl(struct file *file, void *priv,
    struct v4l2_control *ctrl)
{
 struct usb_usbvision *usbvision = video_drvdata(file);

 call_all(usbvision, core, g_ctrl, ctrl);
 return 0;
}
