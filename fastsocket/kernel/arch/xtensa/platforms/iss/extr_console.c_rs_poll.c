
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;
struct timeval {int tv_usec; int tv_sec; } ;


 scalar_t__ SERIAL_TIMER_VALUE ;
 int SYS_read ;
 int SYS_select_one ;
 int TTY_NORMAL ;
 unsigned long XTISS_SELECT_ONE_READ ;
 scalar_t__ __simc (int ,int ,unsigned long,int,int ,int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int serial_timer ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int timer_lock ;
 int tty_flip_buffer_push (struct tty_struct*) ;
 int tty_insert_flip_char (struct tty_struct*,unsigned char,int ) ;

__attribute__((used)) static void rs_poll(unsigned long priv)
{
 struct tty_struct* tty = (struct tty_struct*) priv;

 struct timeval tv = { .tv_sec = 0, .tv_usec = 0 };
 int i = 0;
 unsigned char c;

 spin_lock(&timer_lock);

 while (__simc(SYS_select_one, 0, XTISS_SELECT_ONE_READ, (int)&tv,0,0)){
  __simc (SYS_read, 0, (unsigned long)&c, 1, 0, 0);
  tty_insert_flip_char(tty, c, TTY_NORMAL);
  i++;
 }

 if (i)
  tty_flip_buffer_push(tty);


 mod_timer(&serial_timer, jiffies + SERIAL_TIMER_VALUE);
 spin_unlock(&timer_lock);
}
