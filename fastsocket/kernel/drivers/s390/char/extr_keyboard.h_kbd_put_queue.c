
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;


 int tty_insert_flip_char (struct tty_struct*,int,int ) ;
 int tty_schedule_flip (struct tty_struct*) ;

__attribute__((used)) static inline void
kbd_put_queue(struct tty_struct *tty, int ch)
{
 tty_insert_flip_char(tty, ch, 0);
 tty_schedule_flip(tty);
}
