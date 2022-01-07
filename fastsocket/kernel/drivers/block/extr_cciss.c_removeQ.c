
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int list; int cmd_type; } ;
typedef TYPE_1__ CommandList_struct ;


 int CMD_MSG_STALE ;
 scalar_t__ WARN_ON (int ) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;

__attribute__((used)) static inline void removeQ(CommandList_struct *c)
{
 if (WARN_ON(list_empty(&c->list))) {
  c->cmd_type = CMD_MSG_STALE;
  return;
 }

 list_del_init(&c->list);
}
