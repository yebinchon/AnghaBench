
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct mxc_nand_host {int irq_waitq; scalar_t__ regs; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 scalar_t__ NFC_CONFIG1 ;
 int NFC_INT_MSK ;
 int readw (scalar_t__) ;
 int wake_up (int *) ;
 int writew (int ,scalar_t__) ;

__attribute__((used)) static irqreturn_t mxc_nfc_irq(int irq, void *dev_id)
{
 struct mxc_nand_host *host = dev_id;

 uint16_t tmp;

 tmp = readw(host->regs + NFC_CONFIG1);
 tmp |= NFC_INT_MSK;
 writew(tmp, host->regs + NFC_CONFIG1);

 wake_up(&host->irq_waitq);

 return IRQ_HANDLED;
}
