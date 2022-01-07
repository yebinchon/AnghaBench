
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flag; } ;
struct PStack {TYPE_1__ l2; } ;
struct FsmInst {struct PStack* userdata; } ;


 int FLG_PEND_REL ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static void
l2_pend_rel(struct FsmInst *fi, int event, void *arg)
{
 struct PStack *st = fi->userdata;

 test_and_set_bit(FLG_PEND_REL, &st->l2.flag);
}
