
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int timer_tgcr; int timer_tmr1; int timer_tcn1; unsigned char timer_trr1; int timer_ter1; } ;


 int CPMVEC_TIMER1 ;
 unsigned char HZ ;
 int IRQ_FLG_LOCK ;
 int IRQ_MACHSPEC ;
 int TCMP ;
 int TCTL ;
 int TCTL_CLKSOURCE_32KHZ ;
 int TCTL_IRQEN ;
 int TCTL_OM ;
 int TCTL_TEN ;
 int TPRER ;
 int m68360_timer_irq ;
 TYPE_1__* pquicc ;
 int request_irq (int,int ,int ,char*,int *) ;
 int setup_irq (int ,int *) ;
 unsigned char system_clock ;
 int timer_routine ;

void hw_timer_init(void)
{
  unsigned char prescaler;
  unsigned short tgcr_save;
  tgcr_save = pquicc->timer_tgcr & 0xfff0;
  pquicc->timer_tgcr = tgcr_save;


  prescaler = 8;
  pquicc->timer_tmr1 = 0x001a |
                           (unsigned short)((prescaler - 1) << 8);

  pquicc->timer_tcn1 = 0x0000;

  pquicc->timer_trr1 = (system_clock/ prescaler) / HZ;

  pquicc->timer_ter1 = 0x0003;


  setup_irq(CPMVEC_TIMER1, &m68360_timer_irq);


  tgcr_save = (pquicc->timer_tgcr & 0xfff0) | 0x0001;
  pquicc->timer_tgcr = tgcr_save;
}
