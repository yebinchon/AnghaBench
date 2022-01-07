
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mpc52xx_gpt_priv {TYPE_1__* regs; } ;
struct TYPE_2__ {int status; } ;


 int MPC52xx_GPT_STATUS_IRQMASK ;
 struct mpc52xx_gpt_priv* get_irq_chip_data (unsigned int) ;
 int out_be32 (int *,int ) ;

__attribute__((used)) static void mpc52xx_gpt_irq_ack(unsigned int virq)
{
 struct mpc52xx_gpt_priv *gpt = get_irq_chip_data(virq);

 out_be32(&gpt->regs->status, MPC52xx_GPT_STATUS_IRQMASK);
}
