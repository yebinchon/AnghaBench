
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int * echo_buf; int * read_buf; } ;


 int kfree (int *) ;
 int n_tty_flush_buffer (struct tty_struct*) ;

__attribute__((used)) static void n_tty_close(struct tty_struct *tty)
{
 n_tty_flush_buffer(tty);
 if (tty->read_buf) {
  kfree(tty->read_buf);
  tty->read_buf = ((void*)0);
 }
 if (tty->echo_buf) {
  kfree(tty->echo_buf);
  tty->echo_buf = ((void*)0);
 }
}
