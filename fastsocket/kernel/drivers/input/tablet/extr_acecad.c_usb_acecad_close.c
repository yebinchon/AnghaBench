
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_acecad {int irq; } ;
struct input_dev {int dummy; } ;


 struct usb_acecad* input_get_drvdata (struct input_dev*) ;
 int usb_kill_urb (int ) ;

__attribute__((used)) static void usb_acecad_close(struct input_dev *dev)
{
 struct usb_acecad *acecad = input_get_drvdata(dev);

 usb_kill_urb(acecad->irq);
}
