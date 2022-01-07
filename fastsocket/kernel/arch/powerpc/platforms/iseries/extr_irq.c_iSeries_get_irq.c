
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ ipi_cnt; } ;
struct TYPE_5__ {TYPE_1__ fields; } ;
struct TYPE_6__ {TYPE_2__ int_dword; } ;


 int NO_IRQ_IGNORE ;
 int NR_IRQS ;
 TYPE_3__* get_lppaca () ;
 scalar_t__ hvlpevent_is_pending () ;
 int iSeries_smp_message_recv () ;
 scalar_t__ num_pending_irqs ;
 scalar_t__* pending_irqs ;
 int pending_irqs_lock ;
 int process_hvlpevents () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

unsigned int iSeries_get_irq(void)
{
 int irq = NO_IRQ_IGNORE;







 if (hvlpevent_is_pending())
  process_hvlpevents();
 return irq;
}
