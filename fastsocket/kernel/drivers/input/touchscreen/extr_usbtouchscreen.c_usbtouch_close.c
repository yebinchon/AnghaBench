
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbtouch_usb {int irq; } ;
struct input_dev {int dummy; } ;


 struct usbtouch_usb* input_get_drvdata (struct input_dev*) ;
 int usb_kill_urb (int ) ;

__attribute__((used)) static void usbtouch_close(struct input_dev *input)
{
 struct usbtouch_usb *usbtouch = input_get_drvdata(input);

 usb_kill_urb(usbtouch->irq);
}
