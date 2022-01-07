
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mpc52xx_gpt_priv {int irqhost; TYPE_1__* regs; } ;
struct irq_desc {int dummy; } ;
struct TYPE_2__ {int status; } ;


 int MPC52xx_GPT_STATUS_IRQMASK ;
 int generic_handle_irq (int) ;
 struct mpc52xx_gpt_priv* get_irq_data (unsigned int) ;
 int in_be32 (int *) ;
 int irq_linear_revmap (int ,int ) ;

void mpc52xx_gpt_irq_cascade(unsigned int virq, struct irq_desc *desc)
{
 struct mpc52xx_gpt_priv *gpt = get_irq_data(virq);
 int sub_virq;
 u32 status;

 status = in_be32(&gpt->regs->status) & MPC52xx_GPT_STATUS_IRQMASK;
 if (status) {
  sub_virq = irq_linear_revmap(gpt->irqhost, 0);
  generic_handle_irq(sub_virq);
 }
}
