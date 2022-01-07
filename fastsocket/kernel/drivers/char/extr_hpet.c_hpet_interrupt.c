
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct hpet_dev {int hd_flags; unsigned long hd_ireqfreq; int hd_async_queue; int hd_waitqueue; TYPE_3__* hd_hpet; TYPE_2__* hd_timer; int hd_irqdata; TYPE_1__* hd_hpets; } ;
typedef int irqreturn_t ;
struct TYPE_6__ {int hpet_isr; } ;
struct TYPE_5__ {int hpet_compare; } ;
struct TYPE_4__ {struct hpet_dev* hp_dev; } ;


 int HPET_IE ;
 int HPET_PERIODIC ;
 int HPET_SHARED_IRQ ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int POLL_IN ;
 int SIGIO ;
 int hpet_lock ;
 int kill_fasync (int *,int ,int ) ;
 unsigned long read_counter (int *) ;
 unsigned long readl (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up_interruptible (int *) ;
 int write_counter (unsigned long,int *) ;
 int writel (unsigned long,int *) ;

__attribute__((used)) static irqreturn_t hpet_interrupt(int irq, void *data)
{
 struct hpet_dev *devp;
 unsigned long isr;

 devp = data;
 isr = 1 << (devp - devp->hd_hpets->hp_dev);

 if ((devp->hd_flags & HPET_SHARED_IRQ) &&
     !(isr & readl(&devp->hd_hpet->hpet_isr)))
  return IRQ_NONE;

 spin_lock(&hpet_lock);
 devp->hd_irqdata++;





 if ((devp->hd_flags & (HPET_IE | HPET_PERIODIC)) == HPET_IE) {
  unsigned long m, t;

  t = devp->hd_ireqfreq;
  m = read_counter(&devp->hd_timer->hpet_compare);
  write_counter(t + m, &devp->hd_timer->hpet_compare);
 }

 if (devp->hd_flags & HPET_SHARED_IRQ)
  writel(isr, &devp->hd_hpet->hpet_isr);
 spin_unlock(&hpet_lock);

 wake_up_interruptible(&devp->hd_waitqueue);

 kill_fasync(&devp->hd_async_queue, SIGIO, POLL_IN);

 return IRQ_HANDLED;
}
