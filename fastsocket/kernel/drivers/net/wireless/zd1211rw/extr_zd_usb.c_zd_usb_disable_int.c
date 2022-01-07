
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zd_usb_interrupt {int lock; int * buffer; int buffer_dma; struct urb* urb; } ;
struct zd_usb {struct zd_usb_interrupt intr; } ;
struct usb_device {int dummy; } ;
struct urb {int dummy; } ;
typedef int dma_addr_t ;


 int USB_MAX_EP_INT_BUFFER ;
 int dev_dbg_f (int ,char*,struct urb*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int usb_buffer_free (struct usb_device*,int ,void*,int ) ;
 int usb_free_urb (struct urb*) ;
 int usb_kill_urb (struct urb*) ;
 int zd_usb_dev (struct zd_usb*) ;
 struct usb_device* zd_usb_to_usbdev (struct zd_usb*) ;

void zd_usb_disable_int(struct zd_usb *usb)
{
 unsigned long flags;
 struct usb_device *udev = zd_usb_to_usbdev(usb);
 struct zd_usb_interrupt *intr = &usb->intr;
 struct urb *urb;
 void *buffer;
 dma_addr_t buffer_dma;

 spin_lock_irqsave(&intr->lock, flags);
 urb = intr->urb;
 if (!urb) {
  spin_unlock_irqrestore(&intr->lock, flags);
  return;
 }
 intr->urb = ((void*)0);
 buffer = intr->buffer;
 buffer_dma = intr->buffer_dma;
 intr->buffer = ((void*)0);
 spin_unlock_irqrestore(&intr->lock, flags);

 usb_kill_urb(urb);
 dev_dbg_f(zd_usb_dev(usb), "urb %p killed\n", urb);
 usb_free_urb(urb);

 if (buffer)
  usb_buffer_free(udev, USB_MAX_EP_INT_BUFFER,
      buffer, buffer_dma);
}
