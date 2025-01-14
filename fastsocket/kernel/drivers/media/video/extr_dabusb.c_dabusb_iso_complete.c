
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct urb {int number_of_packets; int actual_length; TYPE_4__* dev; TYPE_1__* iso_frame_desc; int status; void* transfer_buffer; TYPE_3__* context; } ;
typedef TYPE_2__* pdabusb_t ;
typedef TYPE_3__* pbuff_t ;
struct TYPE_9__ {int dev; } ;
struct TYPE_8__ {TYPE_2__* s; } ;
struct TYPE_7__ {scalar_t__ state; int overruns; int wait; int remove_pending; int pending_io; } ;
struct TYPE_6__ {int actual_length; int offset; int status; } ;


 int ENOENT ;
 int _DABUSB_ISOPIPE ;
 scalar_t__ _stopped ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int dbg (char*) ;
 int dev_err (int *,char*,int,...) ;
 int dev_warn (int *,char*,int ) ;
 int memcpy (void*,void*,int) ;
 int usb_maxpacket (TYPE_4__*,unsigned int,int ) ;
 int usb_pipeout (unsigned int) ;
 unsigned int usb_rcvisocpipe (TYPE_4__*,int ) ;
 int wake_up (int *) ;

__attribute__((used)) static void dabusb_iso_complete (struct urb *purb)
{
 pbuff_t b = purb->context;
 pdabusb_t s = b->s;
 int i;
 int len;
 int dst = 0;
 void *buf = purb->transfer_buffer;

 dbg("dabusb_iso_complete");


 if (purb->status != -ENOENT) {
  unsigned int pipe = usb_rcvisocpipe (purb->dev, _DABUSB_ISOPIPE);
  int pipesize = usb_maxpacket (purb->dev, pipe, usb_pipeout (pipe));
  for (i = 0; i < purb->number_of_packets; i++)
   if (!purb->iso_frame_desc[i].status) {
    len = purb->iso_frame_desc[i].actual_length;
    if (len <= pipesize) {
     memcpy (buf + dst, buf + purb->iso_frame_desc[i].offset, len);
     dst += len;
    }
    else
     dev_err(&purb->dev->dev,
      "dabusb_iso_complete: invalid len %d\n", len);
   }
   else
    dev_warn(&purb->dev->dev, "dabusb_iso_complete: corrupted packet status: %d\n", purb->iso_frame_desc[i].status);
  if (dst != purb->actual_length)
   dev_err(&purb->dev->dev,
    "dst!=purb->actual_length:%d!=%d\n",
     dst, purb->actual_length);
 }

 if (atomic_dec_and_test (&s->pending_io) && !s->remove_pending && s->state != _stopped) {
  s->overruns++;
  dev_err(&purb->dev->dev, "overrun (%d)\n", s->overruns);
 }
 wake_up (&s->wait);
}
