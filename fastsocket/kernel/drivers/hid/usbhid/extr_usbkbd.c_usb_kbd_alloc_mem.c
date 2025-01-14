
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_kbd {int leds_dma; void* leds; int cr_dma; void* cr; int new_dma; void* new; void* led; void* irq; } ;
struct usb_device {int dummy; } ;
struct usb_ctrlrequest {int dummy; } ;


 int GFP_ATOMIC ;
 int GFP_KERNEL ;
 void* usb_alloc_urb (int ,int ) ;
 void* usb_buffer_alloc (struct usb_device*,int,int ,int *) ;

__attribute__((used)) static int usb_kbd_alloc_mem(struct usb_device *dev, struct usb_kbd *kbd)
{
 if (!(kbd->irq = usb_alloc_urb(0, GFP_KERNEL)))
  return -1;
 if (!(kbd->led = usb_alloc_urb(0, GFP_KERNEL)))
  return -1;
 if (!(kbd->new = usb_buffer_alloc(dev, 8, GFP_ATOMIC, &kbd->new_dma)))
  return -1;
 if (!(kbd->cr = usb_buffer_alloc(dev, sizeof(struct usb_ctrlrequest), GFP_ATOMIC, &kbd->cr_dma)))
  return -1;
 if (!(kbd->leds = usb_buffer_alloc(dev, 1, GFP_ATOMIC, &kbd->leds_dma)))
  return -1;

 return 0;
}
