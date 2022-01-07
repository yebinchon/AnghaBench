
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* machine_shutdown ) () ;} ;


 int fadump_cleanup () ;
 TYPE_1__ ppc_md ;
 int stub1 () ;

void machine_shutdown(void)
{
 if (ppc_md.machine_shutdown)
  ppc_md.machine_shutdown();
}
