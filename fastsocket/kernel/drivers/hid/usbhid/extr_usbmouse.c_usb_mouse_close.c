
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_mouse {int irq; } ;
struct input_dev {int dummy; } ;


 struct usb_mouse* input_get_drvdata (struct input_dev*) ;
 int usb_kill_urb (int ) ;

__attribute__((used)) static void usb_mouse_close(struct input_dev *dev)
{
 struct usb_mouse *mouse = input_get_drvdata(dev);

 usb_kill_urb(mouse->irq);
}
