
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_kbd {int leds_dma; int leds; int cr_dma; int cr; int new_dma; int new; int led; int irq; } ;
struct usb_device {int dummy; } ;
struct usb_ctrlrequest {int dummy; } ;


 int usb_buffer_free (struct usb_device*,int,int ,int ) ;
 int usb_free_urb (int ) ;

__attribute__((used)) static void usb_kbd_free_mem(struct usb_device *dev, struct usb_kbd *kbd)
{
 usb_free_urb(kbd->irq);
 usb_free_urb(kbd->led);
 usb_buffer_free(dev, 8, kbd->new, kbd->new_dma);
 usb_buffer_free(dev, sizeof(struct usb_ctrlrequest), kbd->cr, kbd->cr_dma);
 usb_buffer_free(dev, 1, kbd->leds, kbd->leds_dma);
}
