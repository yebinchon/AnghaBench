
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {scalar_t__ erasing; } ;


 int echo_char_raw (char,struct tty_struct*) ;

__attribute__((used)) static inline void finish_erasing(struct tty_struct *tty)
{
 if (tty->erasing) {
  echo_char_raw('/', tty);
  tty->erasing = 0;
 }
}
