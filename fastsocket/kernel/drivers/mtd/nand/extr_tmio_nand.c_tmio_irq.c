
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nand_chip {TYPE_1__* controller; } ;
struct tmio_nand {TYPE_2__* dev; scalar_t__ fcr; struct nand_chip chip; } ;
typedef int irqreturn_t ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int wq; } ;


 scalar_t__ FCR_IMR ;
 int IRQ_HANDLED ;
 int dev_warn (int *,char*) ;
 int tmio_iowrite8 (int,scalar_t__) ;
 scalar_t__ unlikely (int) ;
 int waitqueue_active (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static irqreturn_t tmio_irq(int irq, void *__tmio)
{
 struct tmio_nand *tmio = __tmio;
 struct nand_chip *nand_chip = &tmio->chip;


 tmio_iowrite8(0x00, tmio->fcr + FCR_IMR);

 if (unlikely(!waitqueue_active(&nand_chip->controller->wq)))
  dev_warn(&tmio->dev->dev, "spurious interrupt\n");

 wake_up(&nand_chip->controller->wq);
 return IRQ_HANDLED;
}
