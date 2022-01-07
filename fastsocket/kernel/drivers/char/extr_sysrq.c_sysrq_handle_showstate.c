
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;


 int show_state () ;

__attribute__((used)) static void sysrq_handle_showstate(int key, struct tty_struct *tty)
{
 show_state();
}
