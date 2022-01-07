
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct L3Timer {TYPE_3__* pc; int event; } ;
struct TYPE_6__ {TYPE_2__* st; } ;
struct TYPE_4__ {int (* l4l3 ) (TYPE_2__*,int ,TYPE_3__*) ;} ;
struct TYPE_5__ {TYPE_1__ lli; } ;


 int stub1 (TYPE_2__*,int ,TYPE_3__*) ;

__attribute__((used)) static void
L3ExpireTimer(struct L3Timer *t)
{
 t->pc->st->lli.l4l3(t->pc->st, t->event, t->pc);
}
