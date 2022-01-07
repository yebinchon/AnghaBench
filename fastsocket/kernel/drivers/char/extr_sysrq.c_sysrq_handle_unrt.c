
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;


 int normalize_rt_tasks () ;

__attribute__((used)) static void sysrq_handle_unrt(int key, struct tty_struct *tty)
{
 normalize_rt_tasks();
}
