
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t head; size_t tail; unsigned char* buf; } ;
struct iforce {int xmit_lock; int xmit_flags; int serio; TYPE_1__ xmit; } ;


 int IFORCE_XMIT_AGAIN ;
 int IFORCE_XMIT_RUNNING ;
 int XMIT_INC (size_t,int) ;
 int clear_bit (int ,int ) ;
 int serio_write (int ,unsigned char) ;
 int set_bit (int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_and_clear_bit (int ,int ) ;
 scalar_t__ test_and_set_bit (int ,int ) ;

void iforce_serial_xmit(struct iforce *iforce)
{
 unsigned char cs;
 int i;
 unsigned long flags;

 if (test_and_set_bit(IFORCE_XMIT_RUNNING, iforce->xmit_flags)) {
  set_bit(IFORCE_XMIT_AGAIN, iforce->xmit_flags);
  return;
 }

 spin_lock_irqsave(&iforce->xmit_lock, flags);

again:
 if (iforce->xmit.head == iforce->xmit.tail) {
  clear_bit(IFORCE_XMIT_RUNNING, iforce->xmit_flags);
  spin_unlock_irqrestore(&iforce->xmit_lock, flags);
  return;
 }

 cs = 0x2b;

 serio_write(iforce->serio, 0x2b);

 serio_write(iforce->serio, iforce->xmit.buf[iforce->xmit.tail]);
 cs ^= iforce->xmit.buf[iforce->xmit.tail];
 XMIT_INC(iforce->xmit.tail, 1);

 for (i=iforce->xmit.buf[iforce->xmit.tail]; i >= 0; --i) {
  serio_write(iforce->serio, iforce->xmit.buf[iforce->xmit.tail]);
  cs ^= iforce->xmit.buf[iforce->xmit.tail];
  XMIT_INC(iforce->xmit.tail, 1);
 }

 serio_write(iforce->serio, cs);

 if (test_and_clear_bit(IFORCE_XMIT_AGAIN, iforce->xmit_flags))
  goto again;

 clear_bit(IFORCE_XMIT_RUNNING, iforce->xmit_flags);

 spin_unlock_irqrestore(&iforce->xmit_lock, flags);
}
