
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urb {int actual_length; int transfer_buffer; int status; } ;
struct cx231xx {int state; TYPE_1__* dvb; } ;
struct TYPE_2__ {int demux; } ;


 int DEV_DISCONNECTED ;
 int DEV_MISCONFIGURED ;
 int ENOENT ;
 int dvb_dmx_swfilter (int *,int ,int ) ;
 int print_err_status (struct cx231xx*,int,int ) ;

__attribute__((used)) static inline int dvb_bulk_copy(struct cx231xx *dev, struct urb *urb)
{
 if (!dev)
  return 0;

 if ((dev->state & DEV_DISCONNECTED) || (dev->state & DEV_MISCONFIGURED))
  return 0;

 if (urb->status < 0) {
  print_err_status(dev, -1, urb->status);
  if (urb->status == -ENOENT)
   return 0;
 }


 dvb_dmx_swfilter(&dev->dvb->demux,
  urb->transfer_buffer, urb->actual_length);

 return 0;
}
