
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int l2l1; } ;
struct TYPE_3__ {struct BCState* bcs; int hardware; int bc; } ;
struct PStack {TYPE_2__ l2; TYPE_1__ l1; } ;
struct BCState {struct PStack* st; int channel; } ;


 int isar_l2l1 ;
 scalar_t__ open_isarstate (int ,struct BCState*) ;
 int setstack_l1_B (struct PStack*) ;
 int setstack_manager (struct PStack*) ;

__attribute__((used)) static int
setstack_isar(struct PStack *st, struct BCState *bcs)
{
 bcs->channel = st->l1.bc;
 if (open_isarstate(st->l1.hardware, bcs))
  return (-1);
 st->l1.bcs = bcs;
 st->l2.l2l1 = isar_l2l1;
 setstack_manager(st);
 bcs->st = st;
 setstack_l1_B(st);
 return (0);
}
