
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct urb {int status; int number_of_packets; TYPE_2__* iso_frame_desc; scalar_t__ transfer_buffer; } ;
struct em28xx {int state; TYPE_1__* dvb; } ;
struct TYPE_4__ {int status; int actual_length; scalar_t__ offset; } ;
struct TYPE_3__ {int demux; } ;


 int DEV_DISCONNECTED ;
 int DEV_MISCONFIGURED ;
 int ENOENT ;
 int EPROTO ;
 int dvb_dmx_swfilter (int *,scalar_t__,int ) ;
 int print_err_status (struct em28xx*,int,int) ;

__attribute__((used)) static inline int dvb_isoc_copy(struct em28xx *dev, struct urb *urb)
{
 int i;

 if (!dev)
  return 0;

 if ((dev->state & DEV_DISCONNECTED) || (dev->state & DEV_MISCONFIGURED))
  return 0;

 if (urb->status < 0) {
  print_err_status(dev, -1, urb->status);
  if (urb->status == -ENOENT)
   return 0;
 }

 for (i = 0; i < urb->number_of_packets; i++) {
  int status = urb->iso_frame_desc[i].status;

  if (status < 0) {
   print_err_status(dev, i, status);
   if (urb->iso_frame_desc[i].status != -EPROTO)
    continue;
  }

  dvb_dmx_swfilter(&dev->dvb->demux, urb->transfer_buffer +
     urb->iso_frame_desc[i].offset,
     urb->iso_frame_desc[i].actual_length);
 }

 return 0;
}
