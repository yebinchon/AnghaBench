
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_kbd {scalar_t__* leds; scalar_t__ newleds; TYPE_2__* led; int usbdev; } ;
struct urb {scalar_t__ status; TYPE_1__* dev; struct usb_kbd* context; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int dev; } ;


 int GFP_ATOMIC ;
 int dev_warn (int *,char*,scalar_t__) ;
 int err_hid (char*) ;
 scalar_t__ usb_submit_urb (TYPE_2__*,int ) ;

__attribute__((used)) static void usb_kbd_led(struct urb *urb)
{
 struct usb_kbd *kbd = urb->context;

 if (urb->status)
  dev_warn(&urb->dev->dev, "led urb status %d received\n",
    urb->status);

 if (*(kbd->leds) == kbd->newleds)
  return;

 *(kbd->leds) = kbd->newleds;
 kbd->led->dev = kbd->usbdev;
 if (usb_submit_urb(kbd->led, GFP_ATOMIC))
  err_hid("usb_submit_urb(leds) failed");
}
