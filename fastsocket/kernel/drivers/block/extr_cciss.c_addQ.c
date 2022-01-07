
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct list_head {int dummy; } ;
struct TYPE_3__ {int list; } ;
typedef TYPE_1__ CommandList_struct ;


 int list_add_tail (int *,struct list_head*) ;

__attribute__((used)) static inline void addQ(struct list_head *list, CommandList_struct *c)
{
 list_add_tail(&c->list, list);
}
