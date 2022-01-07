
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ipipe_irq_handler_t ;


 int IPIPE_HANDLE_MASK ;
 int IPIPE_PASS_MASK ;
 unsigned int NR_IRQS ;
 int __ipipe_ack_irq ;
 unsigned long __ipipe_core_clock ;
 unsigned long __ipipe_freq_scale ;
 int asm_do_IRQ ;
 unsigned long get_cclk () ;
 int ipipe_root_domain ;
 int ipipe_virtualize_irq (int ,unsigned int,int ,int *,int *,int) ;

void __ipipe_enable_pipeline(void)
{
 unsigned irq;

 __ipipe_core_clock = get_cclk();
 __ipipe_freq_scale = 1000000000UL / __ipipe_core_clock;

 for (irq = 0; irq < NR_IRQS; ++irq)
  ipipe_virtualize_irq(ipipe_root_domain,
         irq,
         (ipipe_irq_handler_t)&asm_do_IRQ,
         ((void*)0),
         &__ipipe_ack_irq,
         IPIPE_HANDLE_MASK | IPIPE_PASS_MASK);
}
