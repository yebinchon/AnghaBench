
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tg3 {int irq_sync; int irq_cnt; TYPE_1__* napi; } ;
struct TYPE_2__ {int irq_vec; } ;


 int BUG_ON (int) ;
 int smp_mb () ;
 int synchronize_irq (int ) ;

__attribute__((used)) static void tg3_irq_quiesce(struct tg3 *tp)
{
 int i;

 BUG_ON(tp->irq_sync);

 tp->irq_sync = 1;
 smp_mb();

 for (i = 0; i < tp->irq_cnt; i++)
  synchronize_irq(tp->napi[i].irq_vec);
}
