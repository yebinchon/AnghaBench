
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int irqreturn_t ;
struct TYPE_2__ {int dma_intr; } ;


 int IRQ_HANDLED ;
 int MVME147_IRQ_SCSI_PORT ;
 TYPE_1__* m147_pcc ;
 int mvme147_host ;
 int wd33c93_intr (int ) ;

__attribute__((used)) static irqreturn_t mvme147_intr (int irq, void *dummy)
{
    if (irq == MVME147_IRQ_SCSI_PORT)
 wd33c93_intr (mvme147_host);
    else
 m147_pcc->dma_intr = 0x89;
    return IRQ_HANDLED;
}
