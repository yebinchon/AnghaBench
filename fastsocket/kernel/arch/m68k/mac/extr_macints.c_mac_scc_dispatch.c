
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ sccbase; } ;


 int IRQ_SCCA ;
 int IRQ_SCCB ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int m68k_handle_int (int ) ;
 TYPE_1__ mac_bi_data ;

void mac_scc_dispatch(int irq, void *dev_id)
{
 volatile unsigned char *scc = (unsigned char *) mac_bi_data.sccbase + 2;
 unsigned char reg;
 unsigned long flags;




 local_irq_save(flags);
 *scc = 3;
 reg = *scc;
 local_irq_restore(flags);
 if (reg & 0x38)
  m68k_handle_int(IRQ_SCCA);
 if (reg & 0x07)
  m68k_handle_int(IRQ_SCCB);
}
