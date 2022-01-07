
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int perfctr; int evntsel; } ;


 int release_evntsel_nmi (int ) ;
 int release_perfctr_nmi (int ) ;
 TYPE_1__* wd_ops ;

__attribute__((used)) static void single_msr_unreserve(void)
{
 release_evntsel_nmi(wd_ops->evntsel);
 release_perfctr_nmi(wd_ops->perfctr);
}
