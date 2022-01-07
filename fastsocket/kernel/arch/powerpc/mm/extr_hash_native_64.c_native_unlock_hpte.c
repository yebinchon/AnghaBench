
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash_pte {unsigned long v; } ;


 int HPTE_LOCK_BIT ;
 int clear_bit (int ,unsigned long*) ;

__attribute__((used)) static inline void native_unlock_hpte(struct hash_pte *hptep)
{
 unsigned long *word = &hptep->v;

 asm volatile("lwsync":::"memory");
 clear_bit(HPTE_LOCK_BIT, word);
}
