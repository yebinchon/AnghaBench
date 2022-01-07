
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int __get_cpu_var ;
struct TYPE_2__ {int (* write ) (int ) ;} ;


 int PCR_PIC_PRIV ;
 int atomic_dec (int *) ;
 int nmi_active ;
 TYPE_1__* pcr_ops ;
 int stub1 (int ) ;

void stop_nmi_watchdog(void *unused)
{
 pcr_ops->write(PCR_PIC_PRIV);
 __get_cpu_var(wd_enabled) = 0;
 atomic_dec(&nmi_active);
}
