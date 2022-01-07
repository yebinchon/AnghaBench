
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct entropy_store {int last_data_init; TYPE_1__* poolinfo; int lock; scalar_t__ entropy_count; } ;
typedef int now ;
typedef unsigned long ktime_t ;
typedef int flags ;
struct TYPE_2__ {int poolwords; } ;


 int arch_get_random_long (unsigned long*) ;
 unsigned long ktime_get_real () ;
 int mix_pool_bytes (struct entropy_store*,unsigned long*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 unsigned long* utsname () ;

__attribute__((used)) static void init_std_data(struct entropy_store *r)
{
 int i;
 ktime_t now;
 unsigned long flags;

 spin_lock_irqsave(&r->lock, flags);
 r->entropy_count = 0;
 r->last_data_init = 0;
 spin_unlock_irqrestore(&r->lock, flags);

 now = ktime_get_real();
 mix_pool_bytes(r, &now, sizeof(now));
 for (i = r->poolinfo->poolwords; i; i--) {
  if (!arch_get_random_long(&flags))
   break;
  mix_pool_bytes(r, &flags, sizeof(flags));
 }
 mix_pool_bytes(r, utsname(), sizeof(*(utsname())));
}
