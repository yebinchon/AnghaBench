
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_device {int dummy; } ;
struct urb {int interval; int transfer_buffer_length; int number_of_packets; TYPE_1__* iso_frame_desc; scalar_t__ start_frame; struct stk_camera* context; int complete; TYPE_2__* transfer_buffer; int transfer_flags; int pipe; struct usb_device* dev; } ;
struct stk_camera {TYPE_2__* isobufs; int isoc_ep; struct usb_device* udev; } ;
struct TYPE_4__ {struct urb* urb; struct TYPE_4__* data; } ;
struct TYPE_3__ {int offset; int length; } ;


 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int ISO_BUFFER_SIZE ;
 int ISO_FRAMES_PER_DESC ;
 int ISO_MAX_FRAME_SIZE ;
 int MAX_ISO_BUFS ;
 int STK_ERROR (char*,...) ;
 int URB_ISO_ASAP ;
 int kfree (TYPE_2__*) ;
 void* kzalloc (int,int ) ;
 int set_memallocd (struct stk_camera*) ;
 int stk_isoc_handler ;
 struct urb* usb_alloc_urb (int,int ) ;
 int usb_free_urb (struct urb*) ;
 int usb_kill_urb (struct urb*) ;
 int usb_rcvisocpipe (struct usb_device*,int ) ;

__attribute__((used)) static int stk_prepare_iso(struct stk_camera *dev)
{
 void *kbuf;
 int i, j;
 struct urb *urb;
 struct usb_device *udev;

 if (dev == ((void*)0))
  return -ENXIO;
 udev = dev->udev;

 if (dev->isobufs)
  STK_ERROR("isobufs already allocated. Bad\n");
 else
  dev->isobufs = kzalloc(MAX_ISO_BUFS * sizeof(*dev->isobufs),
     GFP_KERNEL);
 if (dev->isobufs == ((void*)0)) {
  STK_ERROR("Unable to allocate iso buffers\n");
  return -ENOMEM;
 }
 for (i = 0; i < MAX_ISO_BUFS; i++) {
  if (dev->isobufs[i].data == ((void*)0)) {
   kbuf = kzalloc(ISO_BUFFER_SIZE, GFP_KERNEL);
   if (kbuf == ((void*)0)) {
    STK_ERROR("Failed to allocate iso buffer %d\n",
     i);
    goto isobufs_out;
   }
   dev->isobufs[i].data = kbuf;
  } else
   STK_ERROR("isobuf data already allocated\n");
  if (dev->isobufs[i].urb == ((void*)0)) {
   urb = usb_alloc_urb(ISO_FRAMES_PER_DESC, GFP_KERNEL);
   if (urb == ((void*)0)) {
    STK_ERROR("Failed to allocate URB %d\n", i);
    goto isobufs_out;
   }
   dev->isobufs[i].urb = urb;
  } else {
   STK_ERROR("Killing URB\n");
   usb_kill_urb(dev->isobufs[i].urb);
   urb = dev->isobufs[i].urb;
  }
  urb->interval = 1;
  urb->dev = udev;
  urb->pipe = usb_rcvisocpipe(udev, dev->isoc_ep);
  urb->transfer_flags = URB_ISO_ASAP;
  urb->transfer_buffer = dev->isobufs[i].data;
  urb->transfer_buffer_length = ISO_BUFFER_SIZE;
  urb->complete = stk_isoc_handler;
  urb->context = dev;
  urb->start_frame = 0;
  urb->number_of_packets = ISO_FRAMES_PER_DESC;

  for (j = 0; j < ISO_FRAMES_PER_DESC; j++) {
   urb->iso_frame_desc[j].offset = j * ISO_MAX_FRAME_SIZE;
   urb->iso_frame_desc[j].length = ISO_MAX_FRAME_SIZE;
  }
 }
 set_memallocd(dev);
 return 0;

isobufs_out:
 for (i = 0; i < MAX_ISO_BUFS && dev->isobufs[i].data; i++)
  kfree(dev->isobufs[i].data);
 for (i = 0; i < MAX_ISO_BUFS && dev->isobufs[i].urb; i++)
  usb_free_urb(dev->isobufs[i].urb);
 kfree(dev->isobufs);
 dev->isobufs = ((void*)0);
 return -ENOMEM;
}
