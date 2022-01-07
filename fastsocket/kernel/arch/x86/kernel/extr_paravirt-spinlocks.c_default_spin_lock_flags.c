
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int raw_spinlock_t ;


 int __raw_spin_lock (int *) ;

__attribute__((used)) static inline void
default_spin_lock_flags(raw_spinlock_t *lock, unsigned long flags)
{
 __raw_spin_lock(lock);
}
