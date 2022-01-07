
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int hysdn_lock; int err_log_state; int state; scalar_t__ iobase; scalar_t__ irq_enabled; } ;
typedef TYPE_1__ hysdn_card ;


 int CARD_STATE_UNUSED ;
 int ERRLOG_STATE_OFF ;
 unsigned char PCI9050_E1_RESET ;
 scalar_t__ PCI9050_INTR_REG ;
 unsigned char PCI9050_INTR_REG_EN1 ;
 unsigned char PCI9050_INTR_REG_ENPCI ;
 scalar_t__ PCI9050_USER_IO ;
 unsigned char bytein (scalar_t__) ;
 int byteout (scalar_t__,unsigned char) ;
 int hycapi_capi_stop (TYPE_1__*) ;
 int hysdn_net_release (TYPE_1__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
ergo_stopcard(hysdn_card * card)
{
 unsigned long flags;
 unsigned char val;

 hysdn_net_release(card);



 spin_lock_irqsave(&card->hysdn_lock, flags);
 val = bytein(card->iobase + PCI9050_INTR_REG);
 val &= ~(PCI9050_INTR_REG_ENPCI | PCI9050_INTR_REG_EN1);
 byteout(card->iobase + PCI9050_INTR_REG, val);
 card->irq_enabled = 0;
 byteout(card->iobase + PCI9050_USER_IO, PCI9050_E1_RESET);
 card->state = CARD_STATE_UNUSED;
 card->err_log_state = ERRLOG_STATE_OFF;

 spin_unlock_irqrestore(&card->hysdn_lock, flags);
}
