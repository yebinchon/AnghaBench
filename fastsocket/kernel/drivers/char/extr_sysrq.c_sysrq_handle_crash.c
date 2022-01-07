
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;


 int panic_on_oops ;
 int wmb () ;

__attribute__((used)) static void sysrq_handle_crash(int key, struct tty_struct *tty)
{
 char *killer = ((void*)0);

 panic_on_oops = 1;
 wmb();
 *killer = 1;
}
