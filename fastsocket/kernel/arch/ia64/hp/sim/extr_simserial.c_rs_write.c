
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {int hw_stopped; int stopped; scalar_t__ driver_data; } ;
struct TYPE_2__ {int head; int tail; scalar_t__ buf; } ;
struct async_struct {TYPE_1__ xmit; } ;


 scalar_t__ CIRC_CNT (int,int ,int) ;
 int CIRC_SPACE_TO_END (int,int ,int) ;
 int SERIAL_XMIT_SIZE ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int memcpy (scalar_t__,unsigned char const*,int) ;
 int tmp_buf ;
 int transmit_chars (struct async_struct*,int *) ;

__attribute__((used)) static int rs_write(struct tty_struct * tty,
      const unsigned char *buf, int count)
{
 int c, ret = 0;
 struct async_struct *info = (struct async_struct *)tty->driver_data;
 unsigned long flags;

 if (!tty || !info->xmit.buf || !tmp_buf) return 0;

 local_irq_save(flags);
 while (1) {
  c = CIRC_SPACE_TO_END(info->xmit.head, info->xmit.tail, SERIAL_XMIT_SIZE);
  if (count < c)
   c = count;
  if (c <= 0) {
   break;
  }
  memcpy(info->xmit.buf + info->xmit.head, buf, c);
  info->xmit.head = ((info->xmit.head + c) &
       (SERIAL_XMIT_SIZE-1));
  buf += c;
  count -= c;
  ret += c;
 }
 local_irq_restore(flags);



 if (CIRC_CNT(info->xmit.head, info->xmit.tail, SERIAL_XMIT_SIZE)
     && !tty->stopped && !tty->hw_stopped) {
  transmit_chars(info, ((void*)0));
 }
 return ret;
}
