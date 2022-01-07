
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tty_struct {int dummy; } ;
struct async_struct {int ignore_status_mask; int read_status_mask; int flags; TYPE_1__* state; struct tty_struct* tty; } ;
struct async_icount {int overrun; int frame; int parity; int brk; int rx; } ;
struct TYPE_4__ {int serdatr; int intreq; } ;
struct TYPE_3__ {struct async_icount icount; } ;


 int ASYNC_SAK ;
 int IF_RBF ;
 int SDR_OVRUN ;
 unsigned char TTY_BREAK ;
 unsigned char TTY_FRAME ;
 unsigned char TTY_NORMAL ;
 unsigned char TTY_OVERRUN ;
 unsigned char TTY_PARITY ;
 int UART_LSR_BI ;
 int UART_LSR_DR ;
 int UART_LSR_FE ;
 int UART_LSR_OE ;
 int UART_LSR_PE ;
 TYPE_2__ custom ;
 int do_SAK (struct tty_struct*) ;
 int mb () ;
 int printk (char*,...) ;
 int tty_flip_buffer_push (struct tty_struct*) ;
 int tty_insert_flip_char (struct tty_struct*,unsigned char,unsigned char) ;

__attribute__((used)) static void receive_chars(struct async_struct *info)
{
        int status;
 int serdatr;
 struct tty_struct *tty = info->tty;
 unsigned char ch, flag;
 struct async_icount *icount;
 int oe = 0;

 icount = &info->state->icount;

 status = UART_LSR_DR;
 serdatr = custom.serdatr;
 mb();
 custom.intreq = IF_RBF;
 mb();

 if((serdatr & 0x1ff) == 0)
     status |= UART_LSR_BI;
 if(serdatr & SDR_OVRUN)
     status |= UART_LSR_OE;

 ch = serdatr & 0xff;
 icount->rx++;




 flag = TTY_NORMAL;







 if (status & (UART_LSR_BI | UART_LSR_PE |
        UART_LSR_FE | UART_LSR_OE)) {



   if (status & UART_LSR_BI) {
     status &= ~(UART_LSR_FE | UART_LSR_PE);
     icount->brk++;
   } else if (status & UART_LSR_PE)
     icount->parity++;
   else if (status & UART_LSR_FE)
     icount->frame++;
   if (status & UART_LSR_OE)
     icount->overrun++;






   if (status & info->ignore_status_mask)
     goto out;

   status &= info->read_status_mask;

   if (status & (UART_LSR_BI)) {



     flag = TTY_BREAK;
     if (info->flags & ASYNC_SAK)
       do_SAK(tty);
   } else if (status & UART_LSR_PE)
     flag = TTY_PARITY;
   else if (status & UART_LSR_FE)
     flag = TTY_FRAME;
   if (status & UART_LSR_OE) {





      oe = 1;
   }
 }
 tty_insert_flip_char(tty, ch, flag);
 if (oe == 1)
  tty_insert_flip_char(tty, 0, TTY_OVERRUN);
 tty_flip_buffer_push(tty);
out:
 return;
}
