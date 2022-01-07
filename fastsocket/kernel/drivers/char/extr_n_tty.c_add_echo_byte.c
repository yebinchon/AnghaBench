
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int echo_cnt; int echo_pos; unsigned char* echo_buf; int echo_overrun; } ;


 unsigned char ECHO_OP_ERASE_TAB ;
 unsigned char ECHO_OP_START ;
 int N_TTY_BUF_SIZE ;

__attribute__((used)) static void add_echo_byte(unsigned char c, struct tty_struct *tty)
{
 int new_byte_pos;

 if (tty->echo_cnt == N_TTY_BUF_SIZE) {

  new_byte_pos = tty->echo_pos;





  if (tty->echo_buf[tty->echo_pos] == ECHO_OP_START) {
   if (tty->echo_buf[(tty->echo_pos + 1) &
       (N_TTY_BUF_SIZE - 1)] ==
      ECHO_OP_ERASE_TAB) {
    tty->echo_pos += 3;
    tty->echo_cnt -= 2;
   } else {
    tty->echo_pos += 2;
    tty->echo_cnt -= 1;
   }
  } else {
   tty->echo_pos++;
  }
  tty->echo_pos &= N_TTY_BUF_SIZE - 1;

  tty->echo_overrun = 1;
 } else {
  new_byte_pos = tty->echo_pos + tty->echo_cnt;
  new_byte_pos &= N_TTY_BUF_SIZE - 1;
  tty->echo_cnt++;
 }

 tty->echo_buf[new_byte_pos] = c;
}
