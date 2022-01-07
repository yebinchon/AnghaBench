
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spu {scalar_t__* irqs; int number; int irq_c2; int irq_c1; int irq_c0; } ;


 int IRQF_DISABLED ;
 scalar_t__ NO_IRQ ;
 int free_irq (scalar_t__,struct spu*) ;
 int request_irq (scalar_t__,int ,int ,int ,struct spu*) ;
 int snprintf (int ,int,char*,int) ;
 int spu_irq_class_0 ;
 int spu_irq_class_1 ;
 int spu_irq_class_2 ;

__attribute__((used)) static int spu_request_irqs(struct spu *spu)
{
 int ret = 0;

 if (spu->irqs[0] != NO_IRQ) {
  snprintf(spu->irq_c0, sizeof (spu->irq_c0), "spe%02d.0",
    spu->number);
  ret = request_irq(spu->irqs[0], spu_irq_class_0,
      IRQF_DISABLED,
      spu->irq_c0, spu);
  if (ret)
   goto bail0;
 }
 if (spu->irqs[1] != NO_IRQ) {
  snprintf(spu->irq_c1, sizeof (spu->irq_c1), "spe%02d.1",
    spu->number);
  ret = request_irq(spu->irqs[1], spu_irq_class_1,
      IRQF_DISABLED,
      spu->irq_c1, spu);
  if (ret)
   goto bail1;
 }
 if (spu->irqs[2] != NO_IRQ) {
  snprintf(spu->irq_c2, sizeof (spu->irq_c2), "spe%02d.2",
    spu->number);
  ret = request_irq(spu->irqs[2], spu_irq_class_2,
      IRQF_DISABLED,
      spu->irq_c2, spu);
  if (ret)
   goto bail2;
 }
 return 0;

bail2:
 if (spu->irqs[1] != NO_IRQ)
  free_irq(spu->irqs[1], spu);
bail1:
 if (spu->irqs[0] != NO_IRQ)
  free_irq(spu->irqs[0], spu);
bail0:
 return ret;
}
