
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct page {int dummy; } ;


 int __invalidate_icache_all () ;

void __invalidate_icache_page(struct vm_area_struct *vma, struct page *page)
{
 __invalidate_icache_all();
}
