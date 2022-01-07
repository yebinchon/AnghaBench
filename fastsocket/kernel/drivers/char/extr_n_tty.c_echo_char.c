
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int echo_lock; } ;


 unsigned char ECHO_OP_START ;
 scalar_t__ L_ECHOCTL (struct tty_struct*) ;
 int add_echo_byte (unsigned char,struct tty_struct*) ;
 scalar_t__ iscntrl (unsigned char) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void echo_char(unsigned char c, struct tty_struct *tty)
{
 mutex_lock(&tty->echo_lock);

 if (c == ECHO_OP_START) {
  add_echo_byte(ECHO_OP_START, tty);
  add_echo_byte(ECHO_OP_START, tty);
 } else {
  if (L_ECHOCTL(tty) && iscntrl(c) && c != '\t')
   add_echo_byte(ECHO_OP_START, tty);
  add_echo_byte(c, tty);
 }

 mutex_unlock(&tty->echo_lock);
}
