
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int depth; int * chip; int * action; int status; } ;
struct TYPE_3__ {int intr_cicr; int intr_cimr; } ;


 int CPMVEC_ERROR ;
 int CPMVEC_IDMA1 ;
 int CPMVEC_IDMA2 ;
 int CPMVEC_PIO_PC0 ;
 int CPMVEC_PIO_PC1 ;
 int CPMVEC_PIO_PC10 ;
 int CPMVEC_PIO_PC11 ;
 int CPMVEC_PIO_PC2 ;
 int CPMVEC_PIO_PC3 ;
 int CPMVEC_PIO_PC4 ;
 int CPMVEC_PIO_PC5 ;
 int CPMVEC_PIO_PC6 ;
 int CPMVEC_PIO_PC7 ;
 int CPMVEC_PIO_PC8 ;
 int CPMVEC_PIO_PC9 ;
 int CPMVEC_RESERVED1 ;
 int CPMVEC_RESERVED2 ;
 int CPMVEC_RESERVED3 ;
 int CPMVEC_RISCTIMER ;
 int CPMVEC_SCC1 ;
 int CPMVEC_SCC2 ;
 int CPMVEC_SCC3 ;
 int CPMVEC_SCC4 ;
 int CPMVEC_SDMA_CB_ERR ;
 int CPMVEC_SMC1 ;
 int CPMVEC_SMC2 ;
 int CPMVEC_SPI ;
 int CPMVEC_TIMER1 ;
 int CPMVEC_TIMER2 ;
 int CPMVEC_TIMER3 ;
 int CPMVEC_TIMER4 ;
 int CPM_VECTOR_BASE ;
 int IRQ_DISABLED ;
 int NR_IRQS ;
 int * _ramvec ;
 int bad_interrupt ;
 int buserr ;
 int cpm_interrupt_init () ;
 int intc_irq_chip ;
 int inthandler ;
 TYPE_2__* irq_desc ;
 TYPE_1__* pquicc ;
 int system_call ;
 int trap ;

void init_IRQ(void)
{
 int i;
 int vba = (CPM_VECTOR_BASE<<4);


 _ramvec[2] = buserr;
 _ramvec[3] = trap;
 _ramvec[4] = trap;
 _ramvec[5] = trap;
 _ramvec[6] = trap;
 _ramvec[7] = trap;
 _ramvec[8] = trap;
 _ramvec[9] = trap;
 _ramvec[10] = trap;
 _ramvec[11] = trap;
 _ramvec[12] = trap;
 _ramvec[13] = trap;
 _ramvec[14] = trap;
 _ramvec[15] = trap;

 _ramvec[32] = system_call;
 _ramvec[33] = trap;

 cpm_interrupt_init();



 pquicc->intr_cicr = 0x00e49f00 | vba;


 _ramvec[vba+CPMVEC_ERROR] = bad_interrupt;
 _ramvec[vba+CPMVEC_PIO_PC11] = inthandler;
 _ramvec[vba+CPMVEC_PIO_PC10] = inthandler;
 _ramvec[vba+CPMVEC_SMC2] = inthandler;
 _ramvec[vba+CPMVEC_SMC1] = inthandler;
 _ramvec[vba+CPMVEC_SPI] = inthandler;
 _ramvec[vba+CPMVEC_PIO_PC9] = inthandler;
 _ramvec[vba+CPMVEC_TIMER4] = inthandler;
 _ramvec[vba+CPMVEC_RESERVED1] = inthandler;
 _ramvec[vba+CPMVEC_PIO_PC8] = inthandler;
 _ramvec[vba+CPMVEC_PIO_PC7] = inthandler;
 _ramvec[vba+CPMVEC_PIO_PC6] = inthandler;
 _ramvec[vba+CPMVEC_TIMER3] = inthandler;
 _ramvec[vba+CPMVEC_RISCTIMER] = inthandler;
 _ramvec[vba+CPMVEC_PIO_PC5] = inthandler;
 _ramvec[vba+CPMVEC_PIO_PC4] = inthandler;
 _ramvec[vba+CPMVEC_RESERVED2] = inthandler;
 _ramvec[vba+CPMVEC_RISCTIMER] = inthandler;
 _ramvec[vba+CPMVEC_TIMER2] = inthandler;
 _ramvec[vba+CPMVEC_RESERVED3] = inthandler;
 _ramvec[vba+CPMVEC_IDMA2] = inthandler;
 _ramvec[vba+CPMVEC_IDMA1] = inthandler;
 _ramvec[vba+CPMVEC_SDMA_CB_ERR] = inthandler;
 _ramvec[vba+CPMVEC_PIO_PC3] = inthandler;
 _ramvec[vba+CPMVEC_PIO_PC2] = inthandler;

 _ramvec[vba+CPMVEC_TIMER1] = inthandler;
 _ramvec[vba+CPMVEC_PIO_PC1] = inthandler;
 _ramvec[vba+CPMVEC_SCC4] = inthandler;
 _ramvec[vba+CPMVEC_SCC3] = inthandler;
 _ramvec[vba+CPMVEC_SCC2] = inthandler;
 _ramvec[vba+CPMVEC_SCC1] = inthandler;
 _ramvec[vba+CPMVEC_PIO_PC0] = inthandler;



 pquicc->intr_cimr = 0x00000000;

 for (i = 0; (i < NR_IRQS); i++) {
  irq_desc[i].status = IRQ_DISABLED;
  irq_desc[i].action = ((void*)0);
  irq_desc[i].depth = 1;
  irq_desc[i].chip = &intc_irq_chip;
 }
}
