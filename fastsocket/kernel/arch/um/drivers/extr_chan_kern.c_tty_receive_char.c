
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int raw; } ;


 int I_IXOFF (struct tty_struct*) ;
 scalar_t__ I_IXON (struct tty_struct*) ;
 char START_CHAR (struct tty_struct*) ;
 char STOP_CHAR (struct tty_struct*) ;
 int TTY_NORMAL ;
 int start_tty (struct tty_struct*) ;
 int stop_tty (struct tty_struct*) ;
 int tty_insert_flip_char (struct tty_struct*,char,int ) ;

__attribute__((used)) static void tty_receive_char(struct tty_struct *tty, char ch)
{
 if (tty == ((void*)0))
  return;

 if (I_IXON(tty) && !I_IXOFF(tty) && !tty->raw) {
  if (ch == STOP_CHAR(tty)) {
   stop_tty(tty);
   return;
  }
  else if (ch == START_CHAR(tty)) {
   start_tty(tty);
   return;
  }
 }

 tty_insert_flip_char(tty, ch, TTY_NORMAL);
}
