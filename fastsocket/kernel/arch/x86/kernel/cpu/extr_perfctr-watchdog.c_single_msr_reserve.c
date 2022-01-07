
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int perfctr; int evntsel; } ;


 int release_perfctr_nmi (int ) ;
 int reserve_evntsel_nmi (int ) ;
 int reserve_perfctr_nmi (int ) ;
 TYPE_1__* wd_ops ;

__attribute__((used)) static int single_msr_reserve(void)
{
 if (!reserve_perfctr_nmi(wd_ops->perfctr))
  return 0;

 if (!reserve_evntsel_nmi(wd_ops->evntsel)) {
  release_perfctr_nmi(wd_ops->perfctr);
  return 0;
 }
 return 1;
}
