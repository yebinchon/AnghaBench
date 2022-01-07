
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;


 int __handle_sysrq (int,struct tty_struct*,int) ;
 scalar_t__ sysrq_on () ;

void handle_sysrq(int key, struct tty_struct *tty)
{
 if (sysrq_on())
  __handle_sysrq(key, tty, 1);
}
