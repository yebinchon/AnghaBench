
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct usb_device {int dummy; } ;
struct ati_remote {TYPE_3__* interface; TYPE_4__* out_urb; int outbuf_dma; TYPE_2__* endpoint_out; int outbuf; TYPE_4__* irq_urb; int inbuf_dma; TYPE_1__* endpoint_in; int inbuf; int wait; struct usb_device* udev; } ;
struct TYPE_8__ {int transfer_flags; int transfer_dma; } ;
struct TYPE_7__ {int dev; } ;
struct TYPE_6__ {int bInterval; int bEndpointAddress; } ;
struct TYPE_5__ {int bInterval; int bEndpointAddress; } ;


 int DATA_BUFSIZE ;
 int EIO ;
 int URB_NO_TRANSFER_DMA_MAP ;
 int ati_remote_irq_in ;
 int ati_remote_irq_out ;
 scalar_t__ ati_remote_sendpacket (struct ati_remote*,int,int ) ;
 int dev_err (int *,char*) ;
 int init1 ;
 int init2 ;
 int init_waitqueue_head (int *) ;
 int usb_fill_int_urb (TYPE_4__*,struct usb_device*,int,int ,int,int ,struct ati_remote*,int ) ;
 int usb_maxpacket (struct usb_device*,int,int ) ;
 int usb_pipeout (int) ;
 int usb_rcvintpipe (struct usb_device*,int ) ;
 int usb_sndintpipe (struct usb_device*,int ) ;

__attribute__((used)) static int ati_remote_initialize(struct ati_remote *ati_remote)
{
 struct usb_device *udev = ati_remote->udev;
 int pipe, maxp;

 init_waitqueue_head(&ati_remote->wait);


 pipe = usb_rcvintpipe(udev, ati_remote->endpoint_in->bEndpointAddress);
 maxp = usb_maxpacket(udev, pipe, usb_pipeout(pipe));
 maxp = (maxp > DATA_BUFSIZE) ? DATA_BUFSIZE : maxp;

 usb_fill_int_urb(ati_remote->irq_urb, udev, pipe, ati_remote->inbuf,
    maxp, ati_remote_irq_in, ati_remote,
    ati_remote->endpoint_in->bInterval);
 ati_remote->irq_urb->transfer_dma = ati_remote->inbuf_dma;
 ati_remote->irq_urb->transfer_flags |= URB_NO_TRANSFER_DMA_MAP;


 pipe = usb_sndintpipe(udev, ati_remote->endpoint_out->bEndpointAddress);
 maxp = usb_maxpacket(udev, pipe, usb_pipeout(pipe));
 maxp = (maxp > DATA_BUFSIZE) ? DATA_BUFSIZE : maxp;

 usb_fill_int_urb(ati_remote->out_urb, udev, pipe, ati_remote->outbuf,
    maxp, ati_remote_irq_out, ati_remote,
    ati_remote->endpoint_out->bInterval);
 ati_remote->out_urb->transfer_dma = ati_remote->outbuf_dma;
 ati_remote->out_urb->transfer_flags |= URB_NO_TRANSFER_DMA_MAP;


 if ((ati_remote_sendpacket(ati_remote, 0x8004, init1)) ||
     (ati_remote_sendpacket(ati_remote, 0x8007, init2))) {
  dev_err(&ati_remote->interface->dev,
    "Initializing ati_remote hardware failed.\n");
  return -EIO;
 }

 return 0;
}
