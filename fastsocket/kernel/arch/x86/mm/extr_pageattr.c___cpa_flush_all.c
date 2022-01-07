
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int x86; } ;


 int __flush_tlb_all () ;
 TYPE_1__ boot_cpu_data ;
 int wbinvd () ;

__attribute__((used)) static void __cpa_flush_all(void *arg)
{
 unsigned long cache = (unsigned long)arg;





 __flush_tlb_all();

 if (cache && boot_cpu_data.x86 >= 4)
  wbinvd();
}
