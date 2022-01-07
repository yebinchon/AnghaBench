
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zd_usb {int dummy; } ;
struct usb_device {int dummy; } ;
struct urb {int transfer_flags; int transfer_dma; } ;


 int EP_DATA_IN ;
 int GFP_KERNEL ;
 int URB_NO_TRANSFER_DMA_MAP ;
 int USB_MAX_RX_SIZE ;
 int rx_urb_complete ;
 struct urb* usb_alloc_urb (int ,int ) ;
 void* usb_buffer_alloc (struct usb_device*,int ,int ,int *) ;
 int usb_fill_bulk_urb (struct urb*,struct usb_device*,int ,void*,int ,int ,struct zd_usb*) ;
 int usb_free_urb (struct urb*) ;
 int usb_rcvbulkpipe (struct usb_device*,int ) ;
 struct usb_device* zd_usb_to_usbdev (struct zd_usb*) ;

__attribute__((used)) static struct urb *alloc_rx_urb(struct zd_usb *usb)
{
 struct usb_device *udev = zd_usb_to_usbdev(usb);
 struct urb *urb;
 void *buffer;

 urb = usb_alloc_urb(0, GFP_KERNEL);
 if (!urb)
  return ((void*)0);
 buffer = usb_buffer_alloc(udev, USB_MAX_RX_SIZE, GFP_KERNEL,
        &urb->transfer_dma);
 if (!buffer) {
  usb_free_urb(urb);
  return ((void*)0);
 }

 usb_fill_bulk_urb(urb, udev, usb_rcvbulkpipe(udev, EP_DATA_IN),
     buffer, USB_MAX_RX_SIZE,
     rx_urb_complete, usb);
 urb->transfer_flags |= URB_NO_TRANSFER_DMA_MAP;

 return urb;
}
