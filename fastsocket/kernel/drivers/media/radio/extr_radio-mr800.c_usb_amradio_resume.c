
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dev; } ;
struct amradio_device {int dummy; } ;


 int AMRADIO_START ;
 int amradio_set_mute (struct amradio_device*,int ) ;
 int dev_info (int *,char*) ;
 int dev_warn (int *,char*) ;
 struct amradio_device* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static int usb_amradio_resume(struct usb_interface *intf)
{
 struct amradio_device *radio = usb_get_intfdata(intf);
 int retval;

 retval = amradio_set_mute(radio, AMRADIO_START);
 if (retval < 0)
  dev_warn(&intf->dev, "amradio_start failed\n");

 dev_info(&intf->dev, "coming out of suspend..\n");

 return 0;
}
