
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {scalar_t__ stopped; struct tty_struct* link; } ;


 int tty_flip_buffer_push (struct tty_struct*) ;
 int tty_insert_flip_string (struct tty_struct*,unsigned char const*,int) ;
 int tty_wakeup (struct tty_struct*) ;

__attribute__((used)) static int pty_write(struct tty_struct *tty, const unsigned char *buf, int c)
{
 struct tty_struct *to = tty->link;

 if (tty->stopped)
  return 0;

 if (c > 0) {

  c = tty_insert_flip_string(to, buf, c);

  if (c) {
   tty_flip_buffer_push(to);
   tty_wakeup(tty);
  }
 }
 return c;
}
