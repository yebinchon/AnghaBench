
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int SAK_work; } ;


 int schedule_work (int *) ;

void do_SAK(struct tty_struct *tty)
{
 if (!tty)
  return;
 schedule_work(&tty->SAK_work);
}
