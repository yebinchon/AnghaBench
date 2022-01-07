
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int diva_os_spin_lock_t ;
typedef int diva_os_spin_lock_magic_t ;


 int spin_lock_bh (int *) ;

__attribute__((used)) static __inline__ void diva_os_enter_spin_lock (diva_os_spin_lock_t* a, diva_os_spin_lock_magic_t* old_irql, void* dbg) { spin_lock_bh(a); }
