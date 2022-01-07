
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_xpad {scalar_t__ xtype; int irq_in; } ;
struct input_dev {int dummy; } ;


 scalar_t__ XTYPE_XBOX360W ;
 struct usb_xpad* input_get_drvdata (struct input_dev*) ;
 int usb_kill_urb (int ) ;
 int xpad_stop_output (struct usb_xpad*) ;

__attribute__((used)) static void xpad_close(struct input_dev *dev)
{
 struct usb_xpad *xpad = input_get_drvdata(dev);

 if(xpad->xtype != XTYPE_XBOX360W)
  usb_kill_urb(xpad->irq_in);
 xpad_stop_output(xpad);
}
