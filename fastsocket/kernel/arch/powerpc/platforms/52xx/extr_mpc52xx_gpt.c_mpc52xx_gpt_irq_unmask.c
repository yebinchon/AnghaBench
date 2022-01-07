
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mpc52xx_gpt_priv {int lock; TYPE_1__* regs; } ;
struct TYPE_2__ {int mode; } ;


 int MPC52xx_GPT_MODE_IRQ_EN ;
 struct mpc52xx_gpt_priv* get_irq_chip_data (unsigned int) ;
 int setbits32 (int *,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void mpc52xx_gpt_irq_unmask(unsigned int virq)
{
 struct mpc52xx_gpt_priv *gpt = get_irq_chip_data(virq);
 unsigned long flags;

 spin_lock_irqsave(&gpt->lock, flags);
 setbits32(&gpt->regs->mode, MPC52xx_GPT_MODE_IRQ_EN);
 spin_unlock_irqrestore(&gpt->lock, flags);
}
