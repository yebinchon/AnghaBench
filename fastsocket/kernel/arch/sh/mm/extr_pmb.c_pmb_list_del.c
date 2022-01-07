
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmb_entry {struct pmb_entry* next; } ;


 struct pmb_entry* pmb_list ;

__attribute__((used)) static inline void pmb_list_del(struct pmb_entry *pmbe)
{
 struct pmb_entry **p, *tmp;

 for (p = &pmb_list; (tmp = *p); p = &tmp->next)
  if (tmp == pmbe) {
   *p = tmp->next;
   return;
  }
}
