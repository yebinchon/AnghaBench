
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {scalar_t__ driver_data; } ;
struct TYPE_2__ {unsigned char* buf; size_t head; int tail; } ;
struct async_struct {TYPE_1__ xmit; } ;


 scalar_t__ CIRC_SPACE (size_t,int ,int) ;
 int SERIAL_XMIT_SIZE ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

__attribute__((used)) static int rs_put_char(struct tty_struct *tty, unsigned char ch)
{
 struct async_struct *info = (struct async_struct *)tty->driver_data;
 unsigned long flags;

 if (!tty || !info->xmit.buf)
  return 0;

 local_irq_save(flags);
 if (CIRC_SPACE(info->xmit.head, info->xmit.tail, SERIAL_XMIT_SIZE) == 0) {
  local_irq_restore(flags);
  return 0;
 }
 info->xmit.buf[info->xmit.head] = ch;
 info->xmit.head = (info->xmit.head + 1) & (SERIAL_XMIT_SIZE-1);
 local_irq_restore(flags);
 return 1;
}
