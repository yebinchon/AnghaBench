
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct mm_struct {int dummy; } ;
typedef int pmd_t ;


 int BUG () ;

struct page *
follow_huge_pmd(struct mm_struct *mm, unsigned long address,
  pmd_t *pmd, int write)
{
 BUG();
 return ((void*)0);
}
