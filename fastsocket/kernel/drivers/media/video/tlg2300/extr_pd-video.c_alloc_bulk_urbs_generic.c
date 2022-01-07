
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_complete_t ;
typedef int u8 ;
struct usb_device {int dummy; } ;
struct urb {int transfer_flags; int transfer_dma; } ;
typedef int gfp_t ;


 int URB_NO_TRANSFER_DMA_MAP ;
 struct urb* usb_alloc_urb (int ,int ) ;
 void* usb_buffer_alloc (struct usb_device*,int,int ,int *) ;
 int usb_fill_bulk_urb (struct urb*,struct usb_device*,int ,void*,int,int ,void*) ;
 int usb_free_urb (struct urb*) ;
 int usb_rcvbulkpipe (struct usb_device*,int ) ;

int alloc_bulk_urbs_generic(struct urb **urb_array, int num,
   struct usb_device *udev, u8 ep_addr,
   int buf_size, gfp_t gfp_flags,
   usb_complete_t complete_fn, void *context)
{
 int i = 0;

 for (; i < num; i++) {
  void *mem;
  struct urb *urb = usb_alloc_urb(0, gfp_flags);
  if (urb == ((void*)0))
   return i;

  mem = usb_buffer_alloc(udev, buf_size, gfp_flags,
      &urb->transfer_dma);
  if (mem == ((void*)0)) {
   usb_free_urb(urb);
   return i;
  }

  usb_fill_bulk_urb(urb, udev, usb_rcvbulkpipe(udev, ep_addr),
    mem, buf_size, complete_fn, context);
  urb->transfer_flags |= URB_NO_TRANSFER_DMA_MAP;
  urb_array[i] = urb;
 }
 return i;
}
