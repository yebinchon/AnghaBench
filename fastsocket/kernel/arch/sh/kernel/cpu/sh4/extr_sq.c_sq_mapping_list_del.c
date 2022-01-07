
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sq_mapping {struct sq_mapping* next; } ;


 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 struct sq_mapping* sq_mapping_list ;
 int sq_mapping_lock ;

__attribute__((used)) static inline void sq_mapping_list_del(struct sq_mapping *map)
{
 struct sq_mapping **p, *tmp;

 spin_lock_irq(&sq_mapping_lock);

 for (p = &sq_mapping_list; (tmp = *p); p = &tmp->next)
  if (tmp == map) {
   *p = tmp->next;
   break;
  }

 spin_unlock_irq(&sq_mapping_lock);
}
