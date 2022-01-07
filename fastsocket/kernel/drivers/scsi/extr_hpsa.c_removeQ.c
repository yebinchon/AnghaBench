
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct CommandList {int list; } ;


 scalar_t__ WARN_ON (int ) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;

__attribute__((used)) static inline void removeQ(struct CommandList *c)
{
 if (WARN_ON(list_empty(&c->list)))
  return;
 list_del_init(&c->list);
}
