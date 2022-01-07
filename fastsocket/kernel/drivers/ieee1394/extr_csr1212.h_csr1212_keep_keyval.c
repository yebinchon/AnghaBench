
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csr1212_keyval {int refcnt; } ;


 int atomic_inc (int *) ;
 int smp_mb__after_atomic_inc () ;

__attribute__((used)) static inline void csr1212_keep_keyval(struct csr1212_keyval *kv)
{
 atomic_inc(&kv->refcnt);
 smp_mb__after_atomic_inc();
}
