
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmb_entry {struct pmb_entry* next; } ;


 struct pmb_entry* pmb_list ;

__attribute__((used)) static inline void pmb_list_add(struct pmb_entry *pmbe)
{
 struct pmb_entry **p, *tmp;

 p = &pmb_list;
 while ((tmp = *p) != ((void*)0))
  p = &tmp->next;

 pmbe->next = tmp;
 *p = pmbe;
}
