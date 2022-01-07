
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int layer; } ;
struct PStack {TYPE_1__ ma; } ;


 int hisax_manager ;

void
setstack_manager(struct PStack *st)
{
 st->ma.layer = hisax_manager;
}
