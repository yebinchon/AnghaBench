
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* chars_in_buffer ) (struct tty_struct*) ;} ;
struct tty_struct {int hw_stopped; int stopped; TYPE_1__ ldisc; scalar_t__ driver_data; } ;
struct TYPE_4__ {int head; int tail; scalar_t__ buf; } ;
struct e100_serial {scalar_t__ line; int tr_running; TYPE_2__ xmit; int * ioport; } ;


 int CIRC_SPACE_TO_END (int,int,int) ;
 int DEBUG_LOG (scalar_t__,char*,int) ;
 int DFLOW (int ) ;
 size_t REG_STATUS ;
 scalar_t__ SERIAL_DEBUG_LINE ;
 int SERIAL_XMIT_SIZE ;
 int SIMCOUT (unsigned char const*,int) ;
 int local_irq_disable () ;
 int local_irq_restore (unsigned long) ;
 int local_save_flags (unsigned long) ;
 int memcpy (scalar_t__,unsigned char const*,int) ;
 int printk (char*,int,int ) ;
 int start_transmit (struct e100_serial*) ;
 int stub1 (struct tty_struct*) ;
 int tmp_buf ;

__attribute__((used)) static int rs_raw_write(struct tty_struct *tty,
   const unsigned char *buf, int count)
{
 int c, ret = 0;
 struct e100_serial *info = (struct e100_serial *)tty->driver_data;
 unsigned long flags;



 if (!tty || !info->xmit.buf || !tmp_buf)
  return 0;
 local_save_flags(flags);
 DFLOW(DEBUG_LOG(info->line, "write count %i ", count));
 DFLOW(DEBUG_LOG(info->line, "ldisc %i\n", tty->ldisc.chars_in_buffer(tty)));
 local_irq_disable();
  while (count) {
   c = CIRC_SPACE_TO_END(info->xmit.head,
           info->xmit.tail,
           SERIAL_XMIT_SIZE);

   if (count < c)
    c = count;
   if (c <= 0)
    break;

   memcpy(info->xmit.buf + info->xmit.head, buf, c);
   info->xmit.head = (info->xmit.head + c) &
    (SERIAL_XMIT_SIZE-1);
   buf += c;
   count -= c;
   ret += c;
  }
 local_irq_restore(flags);





 DFLOW(DEBUG_LOG(info->line, "write ret %i\n", ret));

 if (info->xmit.head != info->xmit.tail &&
     !tty->stopped &&
     !tty->hw_stopped &&
     !info->tr_running) {
  start_transmit(info);
 }

 return ret;
}
