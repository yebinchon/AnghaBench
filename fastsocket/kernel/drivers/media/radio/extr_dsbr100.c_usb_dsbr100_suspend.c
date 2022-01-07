
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dev; } ;
struct dsbr100_device {scalar_t__ status; int lock; } ;
typedef int pm_message_t ;


 scalar_t__ STARTED ;
 int dev_info (int *,char*) ;
 int dev_warn (int *,char*) ;
 int dsbr100_stop (struct dsbr100_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct dsbr100_device* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static int usb_dsbr100_suspend(struct usb_interface *intf, pm_message_t message)
{
 struct dsbr100_device *radio = usb_get_intfdata(intf);
 int retval;

 if (radio->status == STARTED) {
  retval = dsbr100_stop(radio);
  if (retval < 0)
   dev_warn(&intf->dev, "dsbr100_stop failed\n");







  mutex_lock(&radio->lock);
  radio->status = STARTED;
  mutex_unlock(&radio->lock);
 }

 dev_info(&intf->dev, "going into suspend..\n");

 return 0;
}
