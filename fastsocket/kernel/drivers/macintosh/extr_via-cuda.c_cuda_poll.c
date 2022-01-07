
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cuda_interrupt (int ,int *) ;
 int cuda_irq ;
 int disable_irq (int ) ;
 int enable_irq (int ) ;

void
cuda_poll(void)
{



    disable_irq(cuda_irq);
    cuda_interrupt(0, ((void*)0));
    enable_irq(cuda_irq);
}
