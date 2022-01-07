
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct at_dma_chan {int dummy; } ;


 int atc_setup_irq (struct at_dma_chan*,int ) ;

__attribute__((used)) static inline void atc_disable_irq(struct at_dma_chan *atchan)
{
 atc_setup_irq(atchan, 0);
}
