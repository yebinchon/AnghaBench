
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct page {int dummy; } ;


 int cacheop_on_each_cpu (int ,struct page*,int) ;
 int local_flush_icache_page ;

void flush_icache_page(struct vm_area_struct *vma, struct page *page)
{

 cacheop_on_each_cpu(local_flush_icache_page, page, 1);
}
