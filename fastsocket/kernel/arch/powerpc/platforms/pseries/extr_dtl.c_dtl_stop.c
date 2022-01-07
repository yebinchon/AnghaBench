
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dtl {size_t cpu; } ;
struct TYPE_2__ {int dtl_enable_mask; } ;


 int get_hard_smp_processor_id (size_t) ;
 TYPE_1__* lppaca ;
 int unregister_dtl (int) ;

__attribute__((used)) static void dtl_stop(struct dtl *dtl)
{
 int hwcpu = get_hard_smp_processor_id(dtl->cpu);

 lppaca[dtl->cpu].dtl_enable_mask = 0x0;

 unregister_dtl(hwcpu);
}
