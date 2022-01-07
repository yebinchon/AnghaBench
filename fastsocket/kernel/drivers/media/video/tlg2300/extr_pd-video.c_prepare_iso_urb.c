
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct video_data {int endpoint_addr; int front; struct urb** urb_array; TYPE_1__* pd; } ;
struct usb_device {int dummy; } ;
struct urb {int interval; int transfer_flags; int number_of_packets; int transfer_buffer_length; TYPE_2__* iso_frame_desc; void* transfer_buffer; int pipe; int context; struct usb_device* dev; int complete; int transfer_dma; } ;
struct TYPE_4__ {int offset; int length; } ;
struct TYPE_3__ {struct usb_device* udev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int ISO_PKT_SIZE ;
 int PK_PER_URB ;
 int SBUF_NUM ;
 int URB_ISO_ASAP ;
 int URB_NO_TRANSFER_DMA_MAP ;
 int urb_complete_iso ;
 struct urb* usb_alloc_urb (int,int ) ;
 void* usb_buffer_alloc (struct usb_device*,int,int ,int *) ;
 int usb_rcvisocpipe (struct usb_device*,int ) ;

__attribute__((used)) static int prepare_iso_urb(struct video_data *video)
{
 struct usb_device *udev = video->pd->udev;
 int i;

 if (video->urb_array[0])
  return 0;

 for (i = 0; i < SBUF_NUM; i++) {
  struct urb *urb;
  void *mem;
  int j;

  urb = usb_alloc_urb(PK_PER_URB, GFP_KERNEL);
  if (urb == ((void*)0))
   goto out;

  video->urb_array[i] = urb;
  mem = usb_buffer_alloc(udev,
      ISO_PKT_SIZE * PK_PER_URB,
      GFP_KERNEL,
      &urb->transfer_dma);

  urb->complete = urb_complete_iso;
  urb->dev = udev;
  urb->context = video->front;
  urb->pipe = usb_rcvisocpipe(udev,
      video->endpoint_addr);
  urb->interval = 1;
  urb->transfer_flags = URB_ISO_ASAP | URB_NO_TRANSFER_DMA_MAP;
  urb->number_of_packets = PK_PER_URB;
  urb->transfer_buffer = mem;
  urb->transfer_buffer_length = PK_PER_URB * ISO_PKT_SIZE;

  for (j = 0; j < PK_PER_URB; j++) {
   urb->iso_frame_desc[j].offset = ISO_PKT_SIZE * j;
   urb->iso_frame_desc[j].length = ISO_PKT_SIZE;
  }
 }
 return 0;
out:
 for (; i > 0; i--)
  ;
 return -ENOMEM;
}
