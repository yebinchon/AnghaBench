
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {int dummy; } ;
struct usb_ov511 {scalar_t__ led_policy; int cbuf_lock; struct usb_ov511* cbuf; scalar_t__ dev; int lock; int user; } ;
struct file {struct video_device* private_data; } ;


 scalar_t__ LED_AUTO ;
 int PDEBUG (int,char*) ;
 int kfree (struct usb_ov511*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ov51x_dealloc (struct usb_ov511*) ;
 int ov51x_led_control (struct usb_ov511*,int ) ;
 int ov51x_stop_isoc (struct usb_ov511*) ;
 struct usb_ov511* video_get_drvdata (struct video_device*) ;

__attribute__((used)) static int
ov51x_v4l1_close(struct file *file)
{
 struct video_device *vdev = file->private_data;
 struct usb_ov511 *ov = video_get_drvdata(vdev);

 PDEBUG(4, "ov511_close");

 mutex_lock(&ov->lock);

 ov->user--;
 ov51x_stop_isoc(ov);

 if (ov->led_policy == LED_AUTO)
  ov51x_led_control(ov, 0);

 if (ov->dev)
  ov51x_dealloc(ov);

 mutex_unlock(&ov->lock);



 if (!ov->dev) {
  mutex_lock(&ov->cbuf_lock);
  kfree(ov->cbuf);
  ov->cbuf = ((void*)0);
  mutex_unlock(&ov->cbuf_lock);

  ov51x_dealloc(ov);
  kfree(ov);
  ov = ((void*)0);
 }

 file->private_data = ((void*)0);
 return 0;
}
