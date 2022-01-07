
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_device {int name; } ;
struct usb_interface {int dev; } ;
struct usb_device_id {int dummy; } ;
struct TYPE_3__ {int release; int * ioctl_ops; int * fops; struct v4l2_device* v4l2_dev; int name; } ;
struct dsbr100_device {int curfreq; struct dsbr100_device* transfer_buffer; TYPE_1__ videodev; int status; int usbdev; scalar_t__ removed; int lock; struct v4l2_device v4l2_dev; } ;


 int EIO ;
 int ENOMEM ;
 int FREQ_MIN ;
 int FREQ_MUL ;
 int GFP_KERNEL ;
 int STOPPED ;
 int TB_LEN ;
 int VFL_TYPE_RADIO ;
 int interface_to_usbdev (struct usb_interface*) ;
 int kfree (struct dsbr100_device*) ;
 struct dsbr100_device* kmalloc (int ,int ) ;
 struct dsbr100_device* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int radio_nr ;
 int strlcpy (int ,int ,int) ;
 int usb_dsbr100_fops ;
 int usb_dsbr100_ioctl_ops ;
 int usb_dsbr100_video_device_release ;
 int usb_set_intfdata (struct usb_interface*,struct dsbr100_device*) ;
 int v4l2_device_register (int *,struct v4l2_device*) ;
 int v4l2_device_unregister (struct v4l2_device*) ;
 int v4l2_err (struct v4l2_device*,char*) ;
 int video_register_device (TYPE_1__*,int ,int ) ;
 int video_set_drvdata (TYPE_1__*,struct dsbr100_device*) ;

__attribute__((used)) static int usb_dsbr100_probe(struct usb_interface *intf,
    const struct usb_device_id *id)
{
 struct dsbr100_device *radio;
 struct v4l2_device *v4l2_dev;
 int retval;

 radio = kzalloc(sizeof(struct dsbr100_device), GFP_KERNEL);

 if (!radio)
  return -ENOMEM;

 radio->transfer_buffer = kmalloc(TB_LEN, GFP_KERNEL);

 if (!(radio->transfer_buffer)) {
  kfree(radio);
  return -ENOMEM;
 }

 v4l2_dev = &radio->v4l2_dev;

 retval = v4l2_device_register(&intf->dev, v4l2_dev);
 if (retval < 0) {
  v4l2_err(v4l2_dev, "couldn't register v4l2_device\n");
  kfree(radio->transfer_buffer);
  kfree(radio);
  return retval;
 }

 strlcpy(radio->videodev.name, v4l2_dev->name, sizeof(radio->videodev.name));
 radio->videodev.v4l2_dev = v4l2_dev;
 radio->videodev.fops = &usb_dsbr100_fops;
 radio->videodev.ioctl_ops = &usb_dsbr100_ioctl_ops;
 radio->videodev.release = usb_dsbr100_video_device_release;

 mutex_init(&radio->lock);

 radio->removed = 0;
 radio->usbdev = interface_to_usbdev(intf);
 radio->curfreq = FREQ_MIN * FREQ_MUL;
 radio->status = STOPPED;

 video_set_drvdata(&radio->videodev, radio);

 retval = video_register_device(&radio->videodev, VFL_TYPE_RADIO, radio_nr);
 if (retval < 0) {
  v4l2_err(v4l2_dev, "couldn't register video device\n");
  v4l2_device_unregister(v4l2_dev);
  kfree(radio->transfer_buffer);
  kfree(radio);
  return -EIO;
 }
 usb_set_intfdata(intf, radio);
 return 0;
}
