
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int lock; TYPE_2__* state; scalar_t__ membase; } ;
struct imx_port {TYPE_3__ port; } ;
typedef int irqreturn_t ;
struct TYPE_4__ {int delta_msr_wait; } ;
struct TYPE_5__ {TYPE_1__ port; } ;


 int IRQ_HANDLED ;
 scalar_t__ USR1 ;
 int USR1_RTSD ;
 unsigned int USR1_RTSS ;
 unsigned int readl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int uart_handle_cts_change (TYPE_3__*,int) ;
 int wake_up_interruptible (int *) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static irqreturn_t imx_rtsint(int irq, void *dev_id)
{
 struct imx_port *sport = dev_id;
 unsigned int val = readl(sport->port.membase + USR1) & USR1_RTSS;
 unsigned long flags;

 spin_lock_irqsave(&sport->port.lock, flags);

 writel(USR1_RTSD, sport->port.membase + USR1);
 uart_handle_cts_change(&sport->port, !!val);
 wake_up_interruptible(&sport->port.state->port.delta_msr_wait);

 spin_unlock_irqrestore(&sport->port.lock, flags);
 return IRQ_HANDLED;
}
