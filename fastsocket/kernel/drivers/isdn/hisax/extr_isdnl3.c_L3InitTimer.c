
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct l3_process {int dummy; } ;
struct TYPE_2__ {long data; void* function; } ;
struct L3Timer {TYPE_1__ tl; struct l3_process* pc; } ;


 scalar_t__ L3ExpireTimer ;
 int init_timer (TYPE_1__*) ;

void
L3InitTimer(struct l3_process *pc, struct L3Timer *t)
{
 t->pc = pc;
 t->tl.function = (void *) L3ExpireTimer;
 t->tl.data = (long) t;
 init_timer(&t->tl);
}
