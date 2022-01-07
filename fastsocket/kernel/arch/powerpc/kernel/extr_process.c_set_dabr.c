
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long __get_cpu_var ;
struct TYPE_2__ {int (* set_dabr ) (unsigned long) ;} ;


 int SPRN_DABR ;
 int SPRN_DAC1 ;
 int mtspr (int ,unsigned long) ;
 TYPE_1__ ppc_md ;
 int stub1 (unsigned long) ;

int set_dabr(unsigned long dabr)
{
 __get_cpu_var(current_dabr) = dabr;

 if (ppc_md.set_dabr)
  return ppc_md.set_dabr(dabr);
 return 0;
}
