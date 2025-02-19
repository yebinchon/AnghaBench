
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int counter; } ;
typedef TYPE_1__ atomic_t ;


 int ATOMIC_HASH (TYPE_1__*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

int atomic_add_unless(atomic_t *v, int a, int u)
{
 int ret;
 unsigned long flags;

 spin_lock_irqsave(ATOMIC_HASH(v), flags);
 ret = v->counter;
 if (ret != u)
  v->counter += a;
 spin_unlock_irqrestore(ATOMIC_HASH(v), flags);
 return ret != u;
}
