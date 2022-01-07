
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int pgd; } ;


 int __xen_pgd_walk (struct mm_struct*,int ,int (*) (struct mm_struct*,struct page*,int),unsigned long) ;

__attribute__((used)) static int xen_pgd_walk(struct mm_struct *mm,
   int (*func)(struct mm_struct *mm, struct page *,
        enum pt_level),
   unsigned long limit)
{
 return __xen_pgd_walk(mm, mm->pgd, func, limit);
}
