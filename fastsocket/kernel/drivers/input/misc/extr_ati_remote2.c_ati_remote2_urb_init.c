
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usb_device {int dummy; } ;
struct ati_remote2 {TYPE_2__** urb; int * buf_dma; TYPE_1__** ep; int * buf; struct usb_device* udev; } ;
struct TYPE_5__ {int transfer_flags; int transfer_dma; } ;
struct TYPE_4__ {int bInterval; int bEndpointAddress; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int URB_NO_TRANSFER_DMA_MAP ;
 int ati_remote2_complete_key ;
 int ati_remote2_complete_mouse ;
 TYPE_2__* usb_alloc_urb (int ,int ) ;
 int usb_buffer_alloc (struct usb_device*,int,int ,int *) ;
 int usb_fill_int_urb (TYPE_2__*,struct usb_device*,int,int ,int,int ,struct ati_remote2*,int ) ;
 int usb_maxpacket (struct usb_device*,int,int ) ;
 int usb_pipeout (int) ;
 int usb_rcvintpipe (struct usb_device*,int ) ;

__attribute__((used)) static int ati_remote2_urb_init(struct ati_remote2 *ar2)
{
 struct usb_device *udev = ar2->udev;
 int i, pipe, maxp;

 for (i = 0; i < 2; i++) {
  ar2->buf[i] = usb_buffer_alloc(udev, 4, GFP_KERNEL, &ar2->buf_dma[i]);
  if (!ar2->buf[i])
   return -ENOMEM;

  ar2->urb[i] = usb_alloc_urb(0, GFP_KERNEL);
  if (!ar2->urb[i])
   return -ENOMEM;

  pipe = usb_rcvintpipe(udev, ar2->ep[i]->bEndpointAddress);
  maxp = usb_maxpacket(udev, pipe, usb_pipeout(pipe));
  maxp = maxp > 4 ? 4 : maxp;

  usb_fill_int_urb(ar2->urb[i], udev, pipe, ar2->buf[i], maxp,
     i ? ati_remote2_complete_key : ati_remote2_complete_mouse,
     ar2, ar2->ep[i]->bInterval);
  ar2->urb[i]->transfer_dma = ar2->buf_dma[i];
  ar2->urb[i]->transfer_flags |= URB_NO_TRANSFER_DMA_MAP;
 }

 return 0;
}
