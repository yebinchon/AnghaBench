
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page_list {struct page_list* next; } ;



__attribute__((used)) static inline struct page_list *pl_elem(struct page_list *pl, unsigned p)
{
 while (pl && p--)
  pl = pl->next;

 return pl;
}
