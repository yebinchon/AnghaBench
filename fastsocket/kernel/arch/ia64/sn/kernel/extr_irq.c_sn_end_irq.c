
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {scalar_t__ sn_in_service_ivecs; } ;


 int HUB_L (int*) ;
 int IA64_IPI_DM_INT ;
 scalar_t__ LOCAL_MMR_ADDR (int ) ;
 int SGI_UART_VECTOR ;
 int SH_EVENT_OCCURRED ;
 int SH_EVENT_OCCURRED_UART_INT_MASK ;
 int __clear_bit (int,void volatile*) ;
 int force_interrupt (unsigned int) ;
 TYPE_1__* pda ;
 int platform_send_ipi (int ,int,int ,int ) ;
 int smp_processor_id () ;
 scalar_t__ sn_force_interrupt_flag ;

__attribute__((used)) static void sn_end_irq(unsigned int irq)
{
 int ivec;
 u64 event_occurred;

 ivec = irq & 0xff;
 if (ivec == SGI_UART_VECTOR) {
  event_occurred = HUB_L((u64*)LOCAL_MMR_ADDR (SH_EVENT_OCCURRED));




  if (event_occurred & SH_EVENT_OCCURRED_UART_INT_MASK) {
   platform_send_ipi(smp_processor_id(), SGI_UART_VECTOR,
       IA64_IPI_DM_INT, 0);
  }
 }
 __clear_bit(ivec, (volatile void *)pda->sn_in_service_ivecs);
 if (sn_force_interrupt_flag)
  force_interrupt(irq);
}
