
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {struct list_head* next; } ;


 int list_del (struct list_head*) ;
 int list_empty (struct list_head*) ;

__attribute__((used)) static inline struct list_head *ncr_list_pop(struct list_head *head)
{
 if (!list_empty(head)) {
  struct list_head *elem = head->next;

  list_del(elem);
  return elem;
 }

 return ((void*)0);
}
