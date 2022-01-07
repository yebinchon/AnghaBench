
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_queryctrl {int type; } ;
struct usb_usbvision {int dummy; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int call_all (struct usb_usbvision*,int ,int ,struct v4l2_queryctrl*) ;
 int core ;
 int queryctrl ;
 struct usb_usbvision* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_queryctrl(struct file *file, void *priv,
       struct v4l2_queryctrl *ctrl)
{
 struct usb_usbvision *usbvision = video_drvdata(file);

 call_all(usbvision, core, queryctrl, ctrl);

 if (!ctrl->type)
  return -EINVAL;

 return 0;
}
