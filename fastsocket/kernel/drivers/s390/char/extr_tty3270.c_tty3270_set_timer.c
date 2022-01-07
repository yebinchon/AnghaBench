
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty3270 {int timer; } ;


 int del_timer (int *) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;

__attribute__((used)) static void tty3270_set_timer(struct tty3270 *tp, int expires)
{
 if (expires == 0)
  del_timer(&tp->timer);
 else
  mod_timer(&tp->timer, jiffies + expires);
}
