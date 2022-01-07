
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int hp_sdc_transaction ;
struct TYPE_2__ {int lock; } ;


 int __hp_sdc_enqueue_transaction (int *) ;
 TYPE_1__ hp_sdc ;
 int write_lock_irqsave (int *,unsigned long) ;
 int write_unlock_irqrestore (int *,unsigned long) ;

int hp_sdc_enqueue_transaction(hp_sdc_transaction *this) {
 unsigned long flags;
 int ret;

 write_lock_irqsave(&hp_sdc.lock, flags);
 ret = __hp_sdc_enqueue_transaction(this);
 write_unlock_irqrestore(&hp_sdc.lock,flags);

 return ret;
}
