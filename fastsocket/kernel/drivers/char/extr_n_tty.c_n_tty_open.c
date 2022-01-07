
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int minimum_to_wake; scalar_t__ closing; scalar_t__ column; void* echo_buf; void* read_buf; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int N_TTY_BUF_SIZE ;
 void* kzalloc (int ,int ) ;
 int n_tty_set_termios (struct tty_struct*,int *) ;
 int reset_buffer_flags (struct tty_struct*) ;

__attribute__((used)) static int n_tty_open(struct tty_struct *tty)
{
 if (!tty)
  return -EINVAL;


 if (!tty->read_buf) {
  tty->read_buf = kzalloc(N_TTY_BUF_SIZE, GFP_KERNEL);
  if (!tty->read_buf)
   return -ENOMEM;
 }
 if (!tty->echo_buf) {
  tty->echo_buf = kzalloc(N_TTY_BUF_SIZE, GFP_KERNEL);

  if (!tty->echo_buf)
   return -ENOMEM;
 }
 reset_buffer_flags(tty);
 tty->column = 0;
 n_tty_set_termios(tty, ((void*)0));
 tty->minimum_to_wake = 1;
 tty->closing = 0;
 return 0;
}
