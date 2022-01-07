
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int spinlock_t ;


 int spin_lock_init (int *) ;

__attribute__((used)) static __inline__ int diva_os_initialize_spin_lock (spinlock_t *lock, void * unused) { spin_lock_init (lock); return(0); }
