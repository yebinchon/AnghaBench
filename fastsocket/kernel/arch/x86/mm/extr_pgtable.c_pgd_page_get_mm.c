
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {scalar_t__ index; } ;
struct mm_struct {int dummy; } ;



struct mm_struct *pgd_page_get_mm(struct page *page)
{
 return (struct mm_struct *)page->index;
}
