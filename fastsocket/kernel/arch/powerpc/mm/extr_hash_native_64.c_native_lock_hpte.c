
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash_pte {unsigned long v; } ;


 int HPTE_LOCK_BIT ;
 int cpu_relax () ;
 int test_and_set_bit (int ,unsigned long*) ;
 scalar_t__ test_bit (int ,unsigned long*) ;

__attribute__((used)) static inline void native_lock_hpte(struct hash_pte *hptep)
{
 unsigned long *word = &hptep->v;

 while (1) {
  if (!test_and_set_bit(HPTE_LOCK_BIT, word))
   break;
  while(test_bit(HPTE_LOCK_BIT, word))
   cpu_relax();
 }
}
