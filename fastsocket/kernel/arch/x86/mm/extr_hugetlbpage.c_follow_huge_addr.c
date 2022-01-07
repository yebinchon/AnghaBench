
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct mm_struct {int dummy; } ;


 int EINVAL ;
 struct page* ERR_PTR (int ) ;

struct page *
follow_huge_addr(struct mm_struct *mm, unsigned long address, int write)
{
 return ERR_PTR(-EINVAL);
}
