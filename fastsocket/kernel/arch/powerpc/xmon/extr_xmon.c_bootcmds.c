
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* power_off ) () ;int (* halt ) () ;int (* restart ) (int *) ;} ;


 int inchar () ;
 TYPE_1__ ppc_md ;
 int stub1 (int *) ;
 int stub2 () ;
 int stub3 () ;

__attribute__((used)) static void bootcmds(void)
{
 int cmd;

 cmd = inchar();
 if (cmd == 'r')
  ppc_md.restart(((void*)0));
 else if (cmd == 'h')
  ppc_md.halt();
 else if (cmd == 'p')
  ppc_md.power_off();
}
