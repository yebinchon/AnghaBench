
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stp_irq_parm {int dummy; } ;
struct etr_irq_parm {int dummy; } ;
typedef int __u16 ;
struct TYPE_2__ {int ext_params; } ;


 TYPE_1__ S390_lowcore ;
 int etr_timing_alert (struct etr_irq_parm*) ;
 int stp_timing_alert (struct stp_irq_parm*) ;

__attribute__((used)) static void timing_alert_interrupt(__u16 code)
{
 if (S390_lowcore.ext_params & 0x00c40000)
  etr_timing_alert((struct etr_irq_parm *)
     &S390_lowcore.ext_params);
 if (S390_lowcore.ext_params & 0x00038000)
  stp_timing_alert((struct stp_irq_parm *)
     &S390_lowcore.ext_params);
}
