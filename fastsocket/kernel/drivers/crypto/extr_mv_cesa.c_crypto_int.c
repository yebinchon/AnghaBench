
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int irqreturn_t ;
struct TYPE_2__ {scalar_t__ eng_st; int queue_th; scalar_t__ reg; } ;


 int BUG_ON (int) ;
 scalar_t__ ENGINE_BUSY ;
 scalar_t__ ENGINE_W_DEQUEUE ;
 scalar_t__ FPGA_INT_STATUS ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ SEC_ACCEL_INT_STATUS ;
 int SEC_INT_ACCEL0_DONE ;
 TYPE_1__* cpg ;
 int readl (scalar_t__) ;
 int wake_up_process (int ) ;
 int writel (int,scalar_t__) ;

irqreturn_t crypto_int(int irq, void *priv)
{
 u32 val;

 val = readl(cpg->reg + SEC_ACCEL_INT_STATUS);
 if (!(val & SEC_INT_ACCEL0_DONE))
  return IRQ_NONE;

 val &= ~SEC_INT_ACCEL0_DONE;
 writel(val, cpg->reg + FPGA_INT_STATUS);
 writel(val, cpg->reg + SEC_ACCEL_INT_STATUS);
 BUG_ON(cpg->eng_st != ENGINE_BUSY);
 cpg->eng_st = ENGINE_W_DEQUEUE;
 wake_up_process(cpg->queue_th);
 return IRQ_HANDLED;
}
