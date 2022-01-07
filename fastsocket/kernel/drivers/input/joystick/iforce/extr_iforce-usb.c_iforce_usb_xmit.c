
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t head; size_t tail; char* buf; } ;
struct iforce {int xmit_lock; TYPE_2__* dev; int xmit_flags; TYPE_3__* out; TYPE_1__ xmit; int usbdev; } ;
struct TYPE_6__ {int transfer_buffer_length; scalar_t__ transfer_buffer; int dev; } ;
struct TYPE_5__ {int dev; } ;


 int CIRC_CNT_TO_END (size_t,size_t,int ) ;
 int GFP_ATOMIC ;
 int IFORCE_XMIT_RUNNING ;
 int XMIT_INC (size_t,int) ;
 int XMIT_SIZE ;
 int clear_bit (int ,int ) ;
 int dev_warn (int *,char*,int) ;
 int memcpy (scalar_t__,int*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int usb_submit_urb (TYPE_3__*,int ) ;

void iforce_usb_xmit(struct iforce *iforce)
{
 int n, c;
 unsigned long flags;

 spin_lock_irqsave(&iforce->xmit_lock, flags);

 if (iforce->xmit.head == iforce->xmit.tail) {
  clear_bit(IFORCE_XMIT_RUNNING, iforce->xmit_flags);
  spin_unlock_irqrestore(&iforce->xmit_lock, flags);
  return;
 }

 ((char *)iforce->out->transfer_buffer)[0] = iforce->xmit.buf[iforce->xmit.tail];
 XMIT_INC(iforce->xmit.tail, 1);
 n = iforce->xmit.buf[iforce->xmit.tail];
 XMIT_INC(iforce->xmit.tail, 1);

 iforce->out->transfer_buffer_length = n + 1;
 iforce->out->dev = iforce->usbdev;


 c = CIRC_CNT_TO_END(iforce->xmit.head, iforce->xmit.tail, XMIT_SIZE);
 if (n < c) c=n;

 memcpy(iforce->out->transfer_buffer + 1,
        &iforce->xmit.buf[iforce->xmit.tail],
        c);
 if (n != c) {
  memcpy(iforce->out->transfer_buffer + 1 + c,
         &iforce->xmit.buf[0],
         n-c);
 }
 XMIT_INC(iforce->xmit.tail, n);

 if ( (n=usb_submit_urb(iforce->out, GFP_ATOMIC)) ) {
  clear_bit(IFORCE_XMIT_RUNNING, iforce->xmit_flags);
  dev_warn(&iforce->dev->dev, "usb_submit_urb failed %d\n", n);
 }




 spin_unlock_irqrestore(&iforce->xmit_lock, flags);
}
