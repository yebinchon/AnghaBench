
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int NO_IRQ ;
 int beatic_ack_irq (unsigned int) ;
 unsigned int beatic_get_irq_plug () ;

unsigned int beatic_get_irq(void)
{
 unsigned int ret;

 ret = beatic_get_irq_plug();
 if (ret != NO_IRQ)
  beatic_ack_irq(ret);
 return ret;
}
