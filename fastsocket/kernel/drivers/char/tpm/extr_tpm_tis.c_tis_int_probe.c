
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {int irq; int locality; scalar_t__ iobase; } ;
struct tpm_chip {TYPE_1__ vendor; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ TPM_INT_STATUS (int ) ;
 scalar_t__ ioread32 (scalar_t__) ;
 int iowrite32 (scalar_t__,scalar_t__) ;

__attribute__((used)) static irqreturn_t tis_int_probe(int irq, void *dev_id)
{
 struct tpm_chip *chip = dev_id;
 u32 interrupt;

 interrupt = ioread32(chip->vendor.iobase +
        TPM_INT_STATUS(chip->vendor.locality));

 if (interrupt == 0)
  return IRQ_NONE;

 chip->vendor.irq = irq;


 iowrite32(interrupt,
    chip->vendor.iobase +
    TPM_INT_STATUS(chip->vendor.locality));
 return IRQ_HANDLED;
}
