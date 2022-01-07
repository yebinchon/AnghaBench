
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {int head; int tail; char* buf; } ;
struct async_struct {char x_char; TYPE_4__ xmit; TYPE_3__* tty; TYPE_2__* state; } ;
struct TYPE_13__ {int (* write ) (TYPE_5__*,char*,int) ;} ;
struct TYPE_11__ {scalar_t__ stopped; scalar_t__ hw_stopped; } ;
struct TYPE_9__ {int tx; } ;
struct TYPE_10__ {TYPE_1__ icount; } ;


 int CIRC_CNT (int,int,int) ;
 int SERIAL_XMIT_SIZE ;
 TYPE_5__* console ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int min (int,int) ;
 int printk (char*,int,int,scalar_t__) ;
 int stub1 (TYPE_5__*,char*,int) ;
 int stub2 (TYPE_5__*,char*,int) ;
 int stub3 (TYPE_5__*,char*,int) ;

__attribute__((used)) static void transmit_chars(struct async_struct *info, int *intr_done)
{
 int count;
 unsigned long flags;


 local_irq_save(flags);

 if (info->x_char) {
  char c = info->x_char;

  console->write(console, &c, 1);

  info->state->icount.tx++;
  info->x_char = 0;

  goto out;
 }

 if (info->xmit.head == info->xmit.tail || info->tty->stopped || info->tty->hw_stopped) {




  goto out;
 }
 count = min(CIRC_CNT(info->xmit.head, info->xmit.tail, SERIAL_XMIT_SIZE),
      SERIAL_XMIT_SIZE - info->xmit.tail);
 console->write(console, info->xmit.buf+info->xmit.tail, count);

 info->xmit.tail = (info->xmit.tail+count) & (SERIAL_XMIT_SIZE-1);




 count = CIRC_CNT(info->xmit.head, info->xmit.tail, SERIAL_XMIT_SIZE);
 if (count) {
  console->write(console, info->xmit.buf, count);
  info->xmit.tail += count;
 }
out:
 local_irq_restore(flags);
}
