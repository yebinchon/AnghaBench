
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int irqreturn_t ;
typedef TYPE_1__* i2eBordStrPtr ;
struct TYPE_3__ {int i2eUsingIrq; } ;


 int IRQ_HANDLED ;
 int ITRC_INTR ;
 int ITRC_NO_PORT ;
 int ITRC_RETURN ;
 int ip2_irq_work (TYPE_1__*) ;
 int ip2trace (int ,int ,int,int,...) ;
 int irq_counter ;

__attribute__((used)) static irqreturn_t
ip2_interrupt(int irq, void *dev_id)
{
 i2eBordStrPtr pB = dev_id;

 ip2trace (ITRC_NO_PORT, ITRC_INTR, 99, 1, pB->i2eUsingIrq );

 ip2_irq_work(pB);

 ++irq_counter;

 ip2trace (ITRC_NO_PORT, ITRC_INTR, ITRC_RETURN, 0 );
 return IRQ_HANDLED;
}
