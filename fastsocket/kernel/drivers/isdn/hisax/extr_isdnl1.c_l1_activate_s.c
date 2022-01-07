
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* l1hw ) (struct PStack*,int,int *) ;} ;
struct PStack {TYPE_1__ l1; } ;
struct FsmInst {struct PStack* userdata; } ;


 int HW_RESET ;
 int REQUEST ;
 int stub1 (struct PStack*,int,int *) ;

__attribute__((used)) static void
l1_activate_s(struct FsmInst *fi, int event, void *arg)
{
 struct PStack *st = fi->userdata;

 st->l1.l1hw(st, HW_RESET | REQUEST, ((void*)0));
}
