
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct comedi_device {int spinlock; } ;
struct comedi_cmd {int flags; } ;
struct TYPE_4__ {scalar_t__ layout; } ;
struct TYPE_3__ {int intr_enable_bits; scalar_t__ main_iobase; } ;


 int ADC_INTR_EOSCAN_BITS ;
 int DEBUG_PRINT (char*,int) ;
 int EN_ADC_ACTIVE_INTR_BIT ;
 int EN_ADC_DONE_INTR_BIT ;
 int EN_ADC_INTR_SRC_BIT ;
 int EN_ADC_OVERRUN_BIT ;
 int EN_ADC_STOP_INTR_BIT ;
 scalar_t__ INTR_ENABLE_REG ;
 scalar_t__ LAYOUT_4020 ;
 int TRIG_WAKE_EOS ;
 TYPE_2__* board (struct comedi_device*) ;
 TYPE_1__* priv (struct comedi_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writew (int,scalar_t__) ;

__attribute__((used)) static void enable_ai_interrupts(struct comedi_device *dev,
     const struct comedi_cmd *cmd)
{
 uint32_t bits;
 unsigned long flags;

 bits = EN_ADC_OVERRUN_BIT | EN_ADC_DONE_INTR_BIT |
     EN_ADC_ACTIVE_INTR_BIT | EN_ADC_STOP_INTR_BIT;

 if (cmd->flags & TRIG_WAKE_EOS) {

  if (board(dev)->layout != LAYOUT_4020)
   bits |= ADC_INTR_EOSCAN_BITS | EN_ADC_INTR_SRC_BIT;
 }
 spin_lock_irqsave(&dev->spinlock, flags);
 priv(dev)->intr_enable_bits |= bits;
 writew(priv(dev)->intr_enable_bits,
        priv(dev)->main_iobase + INTR_ENABLE_REG);
 DEBUG_PRINT("intr enable bits 0x%x\n", priv(dev)->intr_enable_bits);
 spin_unlock_irqrestore(&dev->spinlock, flags);
}
