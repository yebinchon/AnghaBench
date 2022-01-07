
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int read_cnt; unsigned char* read_buf; size_t read_head; } ;


 int N_TTY_BUF_SIZE ;

__attribute__((used)) static void put_tty_queue_nolock(unsigned char c, struct tty_struct *tty)
{
 if (tty->read_cnt < N_TTY_BUF_SIZE) {
  tty->read_buf[tty->read_head] = c;
  tty->read_head = (tty->read_head + 1) & (N_TTY_BUF_SIZE-1);
  tty->read_cnt++;
 }
}
