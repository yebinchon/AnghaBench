
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int hysdn_lock; int irq_queue; int set_errlog_state; int waitpofready; int writebootseq; int writebootimg; int testram; int (* releasehardware ) (TYPE_1__*) ;int (* stopcard ) (TYPE_1__*) ;int irq; scalar_t__ iobase; scalar_t__ membase; int dpram; scalar_t__ memend; } ;
typedef TYPE_1__ hysdn_card ;


 scalar_t__ ERG_DPRAM_PAGE_SIZE ;
 int INIT_WORK (int *,int ) ;
 int IRQF_SHARED ;
 scalar_t__ PCI9050_INTR_REG ;
 scalar_t__ PCI9050_USER_IO ;
 int ergo_interrupt ;
 int ergo_irq_bh ;
 int ergo_releasehardware (TYPE_1__*) ;
 int ergo_set_errlog_state ;
 int ergo_stopcard (TYPE_1__*) ;
 int ergo_testram ;
 int ergo_waitpofready ;
 int ergo_writebootimg ;
 int ergo_writebootseq ;
 int ioremap (scalar_t__,scalar_t__) ;
 int release_region (scalar_t__,int) ;
 scalar_t__ request_irq (int ,int ,int ,char*,TYPE_1__*) ;
 int request_region (scalar_t__,int,char*) ;
 int spin_lock_init (int *) ;

int
ergo_inithardware(hysdn_card * card)
{
 if (!request_region(card->iobase + PCI9050_INTR_REG, 1, "HYSDN"))
  return (-1);
 if (!request_region(card->iobase + PCI9050_USER_IO, 1, "HYSDN")) {
  release_region(card->iobase + PCI9050_INTR_REG, 1);
  return (-1);
 }
 card->memend = card->membase + ERG_DPRAM_PAGE_SIZE - 1;
 if (!(card->dpram = ioremap(card->membase, ERG_DPRAM_PAGE_SIZE))) {
  release_region(card->iobase + PCI9050_INTR_REG, 1);
  release_region(card->iobase + PCI9050_USER_IO, 1);
  return (-1);
 }

 ergo_stopcard(card);
 if (request_irq(card->irq, ergo_interrupt, IRQF_SHARED, "HYSDN", card)) {
  ergo_releasehardware(card);
  return (-1);
 }

 card->stopcard = ergo_stopcard;
 card->releasehardware = ergo_releasehardware;
 card->testram = ergo_testram;
 card->writebootimg = ergo_writebootimg;
 card->writebootseq = ergo_writebootseq;
 card->waitpofready = ergo_waitpofready;
 card->set_errlog_state = ergo_set_errlog_state;
 INIT_WORK(&card->irq_queue, ergo_irq_bh);
 spin_lock_init(&card->hysdn_lock);

 return (0);
}
