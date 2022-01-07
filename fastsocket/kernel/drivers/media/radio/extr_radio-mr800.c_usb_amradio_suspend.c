
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dev; } ;
struct amradio_device {int dummy; } ;
typedef int pm_message_t ;


 int AMRADIO_STOP ;
 int amradio_set_mute (struct amradio_device*,int ) ;
 int dev_info (int *,char*) ;
 int dev_warn (int *,char*) ;
 struct amradio_device* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static int usb_amradio_suspend(struct usb_interface *intf, pm_message_t message)
{
 struct amradio_device *radio = usb_get_intfdata(intf);
 int retval;

 retval = amradio_set_mute(radio, AMRADIO_STOP);
 if (retval < 0)
  dev_warn(&intf->dev, "amradio_stop failed\n");

 dev_info(&intf->dev, "going into suspend..\n");

 return 0;
}
