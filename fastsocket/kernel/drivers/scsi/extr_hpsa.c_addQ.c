
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct CommandList {int list; } ;


 int list_add_tail (int *,struct list_head*) ;

__attribute__((used)) static inline void addQ(struct list_head *list, struct CommandList *c)
{
 list_add_tail(&c->list, list);
}
