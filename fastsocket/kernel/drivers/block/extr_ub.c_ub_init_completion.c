
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ub_completion {int lock; scalar_t__ done; } ;


 int spin_lock_init (int *) ;

__attribute__((used)) static inline void ub_init_completion(struct ub_completion *x)
{
 x->done = 0;
 spin_lock_init(&x->lock);
}
