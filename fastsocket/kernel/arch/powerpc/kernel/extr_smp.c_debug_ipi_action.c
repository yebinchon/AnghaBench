
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int PPC_MSG_DEBUGGER_BREAK ;
 int smp_message_recv (int ) ;

__attribute__((used)) static irqreturn_t debug_ipi_action(int irq, void *data)
{
 smp_message_recv(PPC_MSG_DEBUGGER_BREAK);
 return IRQ_HANDLED;
}
