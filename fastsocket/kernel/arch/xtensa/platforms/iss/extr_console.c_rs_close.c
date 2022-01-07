
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int count; } ;
struct file {int dummy; } ;


 int del_timer_sync (int *) ;
 int serial_timer ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int timer_lock ;

__attribute__((used)) static void rs_close(struct tty_struct *tty, struct file * filp)
{
 spin_lock(&timer_lock);
 if (tty->count == 1)
  del_timer_sync(&serial_timer);
 spin_unlock(&timer_lock);
}
