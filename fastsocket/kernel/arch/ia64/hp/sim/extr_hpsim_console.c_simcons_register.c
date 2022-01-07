
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; } ;


 int CON_ENABLED ;
 TYPE_1__ hpsim_cons ;
 int ia64_platform_is (char*) ;
 int register_console (TYPE_1__*) ;

int simcons_register(void)
{
 if (!ia64_platform_is("hpsim"))
  return 1;

 if (hpsim_cons.flags & CON_ENABLED)
  return 1;

 register_console(&hpsim_cons);
 return 0;
}
