
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int canon_head; int read_tail; scalar_t__* read_buf; int read_flags; int canon_data; } ;


 int N_TTY_BUF_SIZE ;
 scalar_t__ __DISABLED_CHAR ;
 scalar_t__ test_bit (int,int ) ;

__attribute__((used)) static unsigned long inq_canon(struct tty_struct *tty)
{
 int nr, head, tail;

 if (!tty->canon_data)
  return 0;
 head = tty->canon_head;
 tail = tty->read_tail;
 nr = (head - tail) & (N_TTY_BUF_SIZE-1);

 while (head != tail) {
  if (test_bit(tail, tty->read_flags) &&
      tty->read_buf[tail] == __DISABLED_CHAR)
   nr--;
  tail = (tail+1) & (N_TTY_BUF_SIZE-1);
 }
 return nr;
}
