
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* l2l3 ) (struct PStack*,int,int *) ;} ;
struct PStack {TYPE_1__ l2; } ;
struct FsmInst {struct PStack* userdata; } ;


 int CONFIRM ;
 int DL_RELEASE ;
 int stub1 (struct PStack*,int,int *) ;

__attribute__((used)) static void
l2_release(struct FsmInst *fi, int event, void *arg)
{
 struct PStack *st = fi->userdata;

 st->l2.l2l3(st, DL_RELEASE | CONFIRM, ((void*)0));
}
