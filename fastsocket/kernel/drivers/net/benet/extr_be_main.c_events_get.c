
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct be_eq_obj {int q; } ;
struct be_eq_entry {scalar_t__ evt; } ;


 int queue_tail_inc (int *) ;
 struct be_eq_entry* queue_tail_node (int *) ;
 int rmb () ;

__attribute__((used)) static inline int events_get(struct be_eq_obj *eqo)
{
 struct be_eq_entry *eqe;
 int num = 0;

 do {
  eqe = queue_tail_node(&eqo->q);
  if (eqe->evt == 0)
   break;

  rmb();
  eqe->evt = 0;
  num++;
  queue_tail_inc(&eqo->q);
 } while (1);

 return num;
}
