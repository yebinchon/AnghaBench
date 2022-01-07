
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int echo_lock; } ;


 unsigned int ECHO_OP_ERASE_TAB ;
 unsigned int ECHO_OP_START ;
 int add_echo_byte (unsigned int,struct tty_struct*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void echo_erase_tab(unsigned int num_chars, int after_tab,
      struct tty_struct *tty)
{
 mutex_lock(&tty->echo_lock);

 add_echo_byte(ECHO_OP_START, tty);
 add_echo_byte(ECHO_OP_ERASE_TAB, tty);


 num_chars &= 7;


 if (after_tab)
  num_chars |= 0x80;

 add_echo_byte(num_chars, tty);

 mutex_unlock(&tty->echo_lock);
}
