
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct con3270 {int timer; } ;


 int del_timer (int *) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;

__attribute__((used)) static void con3270_set_timer(struct con3270 *cp, int expires)
{
 if (expires == 0)
  del_timer(&cp->timer);
 else
  mod_timer(&cp->timer, jiffies + expires);
}
