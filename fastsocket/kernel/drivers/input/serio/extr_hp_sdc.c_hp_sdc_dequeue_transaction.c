
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int hp_sdc_transaction ;
struct TYPE_2__ {int lock; int ** tq; } ;


 int HP_SDC_QUEUE_LEN ;
 TYPE_1__ hp_sdc ;
 int write_lock_irqsave (int *,unsigned long) ;
 int write_unlock_irqrestore (int *,unsigned long) ;

int hp_sdc_dequeue_transaction(hp_sdc_transaction *this)
{
 unsigned long flags;
 int i;

 write_lock_irqsave(&hp_sdc.lock, flags);



 for (i = 0; i < HP_SDC_QUEUE_LEN; i++)
  if (hp_sdc.tq[i] == this)
   hp_sdc.tq[i] = ((void*)0);

 write_unlock_irqrestore(&hp_sdc.lock, flags);
 return 0;
}
