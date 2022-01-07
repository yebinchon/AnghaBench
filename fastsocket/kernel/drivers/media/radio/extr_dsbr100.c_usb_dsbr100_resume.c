
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dev; } ;
struct dsbr100_device {scalar_t__ status; } ;


 scalar_t__ STARTED ;
 int dev_info (int *,char*) ;
 int dev_warn (int *,char*) ;
 int dsbr100_start (struct dsbr100_device*) ;
 struct dsbr100_device* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static int usb_dsbr100_resume(struct usb_interface *intf)
{
 struct dsbr100_device *radio = usb_get_intfdata(intf);
 int retval;

 if (radio->status == STARTED) {
  retval = dsbr100_start(radio);
  if (retval < 0)
   dev_warn(&intf->dev, "dsbr100_start failed\n");
 }

 dev_info(&intf->dev, "coming out of suspend..\n");

 return 0;
}
