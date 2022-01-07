
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int * pgd; } ;
typedef int pgd_t ;


 unsigned long SRMMU_PGDIR_SHIFT ;

__attribute__((used)) static inline pgd_t *srmmu_pgd_offset(struct mm_struct * mm, unsigned long address)
{ return mm->pgd + (address >> SRMMU_PGDIR_SHIFT); }
