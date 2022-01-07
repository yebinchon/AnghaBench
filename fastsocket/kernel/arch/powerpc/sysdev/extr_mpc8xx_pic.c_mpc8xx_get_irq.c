
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sc_sivec; } ;


 int NO_IRQ ;
 int PIC_VEC_SPURRIOUS ;
 int in_be32 (int *) ;
 unsigned int irq_linear_revmap (int ,int) ;
 int mpc8xx_pic_host ;
 TYPE_1__* siu_reg ;

unsigned int mpc8xx_get_irq(void)
{
 int irq;




 irq = in_be32(&siu_reg->sc_sivec) >> 26;

 if (irq == PIC_VEC_SPURRIOUS)
  irq = NO_IRQ;

        return irq_linear_revmap(mpc8xx_pic_host, irq);

}
