
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int id; } ;
struct mm_struct {TYPE_1__ context; } ;
typedef int pte_t ;


 scalar_t__ Hash ;
 unsigned long PAGE_MASK ;
 unsigned long __pa (int *) ;
 int flush_hash_pages (int ,unsigned long,unsigned long,int) ;

void flush_hash_entry(struct mm_struct *mm, pte_t *ptep, unsigned long addr)
{
 unsigned long ptephys;

 if (Hash != 0) {
  ptephys = __pa(ptep) & PAGE_MASK;
  flush_hash_pages(mm->context.id, addr, ptephys, 1);
 }
}
