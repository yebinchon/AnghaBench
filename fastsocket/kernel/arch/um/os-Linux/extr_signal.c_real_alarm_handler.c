
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uml_pt_regs {scalar_t__ is_user; } ;
struct sigcontext {int dummy; } ;


 int SIGVTALRM ;
 int copy_sc (struct uml_pt_regs*,struct sigcontext*) ;
 int timer_handler (int ,struct uml_pt_regs*) ;
 int unblock_signals () ;

__attribute__((used)) static void real_alarm_handler(struct sigcontext *sc)
{
 struct uml_pt_regs regs;

 if (sc != ((void*)0))
  copy_sc(&regs, sc);
 regs.is_user = 0;
 unblock_signals();
 timer_handler(SIGVTALRM, &regs);
}
