
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int work; } ;
struct tps65010 {TYPE_1__ work; int flags; } ;
typedef int irqreturn_t ;


 int FLAG_IRQ_ENABLE ;
 int IRQ_HANDLED ;
 int disable_irq_nosync (int) ;
 int schedule_work (int *) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static irqreturn_t tps65010_irq(int irq, void *_tps)
{
 struct tps65010 *tps = _tps;

 disable_irq_nosync(irq);
 set_bit(FLAG_IRQ_ENABLE, &tps->flags);
 (void) schedule_work(&tps->work.work);
 return IRQ_HANDLED;
}
