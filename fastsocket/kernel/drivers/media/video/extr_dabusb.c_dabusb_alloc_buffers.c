
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef TYPE_2__* pdabusb_t ;
typedef TYPE_3__* pbuff_t ;
typedef int buff_t ;
struct TYPE_14__ {int dev; } ;
struct TYPE_13__ {int transfer_buffer_length; int number_of_packets; unsigned int pipe; int buff_list; TYPE_1__* iso_frame_desc; struct TYPE_13__* purb; int transfer_flags; TYPE_4__* dev; struct TYPE_13__* context; int complete; int transfer_buffer; TYPE_2__* s; } ;
struct TYPE_12__ {int total_buffer_size; int got_mem; int free_buff_list; TYPE_4__* usbdev; } ;
struct TYPE_11__ {int offset; int length; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int URB_ISO_ASAP ;
 int _DABUSB_ISOPIPE ;
 int _ISOPIPESIZE ;
 int dabusb_free_buffers (TYPE_2__*) ;
 int dabusb_iso_complete ;
 int dbg (char*,int,int,int) ;
 int dev_err (int *,char*,...) ;
 int kfree (TYPE_3__*) ;
 int kmalloc (int,int ) ;
 TYPE_3__* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 TYPE_3__* usb_alloc_urb (int,int ) ;
 int usb_maxpacket (TYPE_4__*,unsigned int,int ) ;
 int usb_pipeout (unsigned int) ;
 unsigned int usb_rcvisocpipe (TYPE_4__*,int ) ;

__attribute__((used)) static int dabusb_alloc_buffers (pdabusb_t s)
{
 int transfer_len = 0;
 pbuff_t b;
 unsigned int pipe = usb_rcvisocpipe (s->usbdev, _DABUSB_ISOPIPE);
 int pipesize = usb_maxpacket (s->usbdev, pipe, usb_pipeout (pipe));
 int packets = _ISOPIPESIZE / pipesize;
 int transfer_buffer_length = packets * pipesize;
 int i;

 dbg("dabusb_alloc_buffers pipesize:%d packets:%d transfer_buffer_len:%d",
   pipesize, packets, transfer_buffer_length);

 while (transfer_len < (s->total_buffer_size << 10)) {
  b = kzalloc(sizeof (buff_t), GFP_KERNEL);
  if (!b) {
   dev_err(&s->usbdev->dev,
    "kzalloc(sizeof(buff_t))==NULL\n");
   goto err;
  }
  b->s = s;
  b->purb = usb_alloc_urb(packets, GFP_KERNEL);
  if (!b->purb) {
   dev_err(&s->usbdev->dev, "usb_alloc_urb == NULL\n");
   kfree (b);
   goto err;
  }

  b->purb->transfer_buffer = kmalloc (transfer_buffer_length, GFP_KERNEL);
  if (!b->purb->transfer_buffer) {
   kfree (b->purb);
   kfree (b);
   dev_err(&s->usbdev->dev,
    "kmalloc(%d)==NULL\n", transfer_buffer_length);
   goto err;
  }

  b->purb->transfer_buffer_length = transfer_buffer_length;
  b->purb->number_of_packets = packets;
  b->purb->complete = dabusb_iso_complete;
  b->purb->context = b;
  b->purb->dev = s->usbdev;
  b->purb->pipe = pipe;
  b->purb->transfer_flags = URB_ISO_ASAP;

  for (i = 0; i < packets; i++) {
   b->purb->iso_frame_desc[i].offset = i * pipesize;
   b->purb->iso_frame_desc[i].length = pipesize;
  }

  transfer_len += transfer_buffer_length;
  list_add_tail (&b->buff_list, &s->free_buff_list);
 }
 s->got_mem = transfer_len;

 return 0;

 err:
 dabusb_free_buffers (s);
 return -ENOMEM;
}
