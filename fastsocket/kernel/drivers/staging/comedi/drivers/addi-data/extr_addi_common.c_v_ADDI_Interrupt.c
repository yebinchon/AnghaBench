
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {int dummy; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int (* v_hwdrv_Interrupt ) (int,void*) ;} ;


 int IRQ_RETVAL (int) ;
 int stub1 (int,void*) ;
 TYPE_1__* this_board ;

__attribute__((used)) static irqreturn_t v_ADDI_Interrupt(int irq, void *d)
{
 struct comedi_device *dev = d;
 this_board->v_hwdrv_Interrupt(irq, d);
 return IRQ_RETVAL(1);
}
