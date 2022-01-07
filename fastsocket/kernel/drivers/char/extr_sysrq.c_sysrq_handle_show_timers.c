
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;


 int sysrq_timer_list_show () ;

__attribute__((used)) static void sysrq_handle_show_timers(int key, struct tty_struct *tty)
{
 sysrq_timer_list_show();
}
