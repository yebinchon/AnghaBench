
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_kbd {int newleds; int* leds; TYPE_1__* led; int usbdev; } ;
struct input_dev {int led; } ;
struct TYPE_2__ {int dev; int status; } ;


 int EINPROGRESS ;
 unsigned int EV_LED ;
 int GFP_ATOMIC ;
 int LED_CAPSL ;
 int LED_COMPOSE ;
 int LED_KANA ;
 int LED_NUML ;
 int LED_SCROLLL ;
 int err_hid (char*) ;
 struct usb_kbd* input_get_drvdata (struct input_dev*) ;
 int test_bit (int ,int ) ;
 scalar_t__ usb_submit_urb (TYPE_1__*,int ) ;

__attribute__((used)) static int usb_kbd_event(struct input_dev *dev, unsigned int type,
    unsigned int code, int value)
{
 struct usb_kbd *kbd = input_get_drvdata(dev);

 if (type != EV_LED)
  return -1;

 kbd->newleds = (!!test_bit(LED_KANA, dev->led) << 3) | (!!test_bit(LED_COMPOSE, dev->led) << 3) |
         (!!test_bit(LED_SCROLLL, dev->led) << 2) | (!!test_bit(LED_CAPSL, dev->led) << 1) |
         (!!test_bit(LED_NUML, dev->led));

 if (kbd->led->status == -EINPROGRESS)
  return 0;

 if (*(kbd->leds) == kbd->newleds)
  return 0;

 *(kbd->leds) = kbd->newleds;
 kbd->led->dev = kbd->usbdev;
 if (usb_submit_urb(kbd->led, GFP_ATOMIC))
  err_hid("usb_submit_urb(leds) failed");

 return 0;
}
