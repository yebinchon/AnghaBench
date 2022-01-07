
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_5__ {int type; scalar_t__ intctl_reg; scalar_t__ plxbase; int rambase; } ;
struct TYPE_6__ {TYPE_1__ hw; } ;
typedef TYPE_2__ pc300_t ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;



 int volatile PLX_9050_LINT1_STATUS ;
 int volatile PLX_9050_LINT2_STATUS ;
 int volatile cpc_readb (scalar_t__) ;
 int falc_intr (TYPE_2__*) ;
 int printk (char*,int) ;
 int sca_intr (TYPE_2__*) ;

__attribute__((used)) static irqreturn_t cpc_intr(int irq, void *dev_id)
{
 pc300_t *card = dev_id;
 volatile u8 plx_status;

 if (!card) {



  return IRQ_NONE;
 }

 if (!card->hw.rambase) {



  return IRQ_NONE;
 }

 switch (card->hw.type) {
  case 130:
  case 128:
   sca_intr(card);
   break;

  case 129:
   while ( (plx_status = (cpc_readb(card->hw.plxbase + card->hw.intctl_reg) &
     (PLX_9050_LINT1_STATUS | PLX_9050_LINT2_STATUS))) != 0) {
    if (plx_status & PLX_9050_LINT1_STATUS) {
     sca_intr(card);
    }
    if (plx_status & PLX_9050_LINT2_STATUS) {
     falc_intr(card);
    }
   }
   break;
 }
 return IRQ_HANDLED;
}
