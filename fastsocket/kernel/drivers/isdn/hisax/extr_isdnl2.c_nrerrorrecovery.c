
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int flag; } ;
struct TYPE_3__ {int (* layer ) (struct PStack*,int,void*) ;} ;
struct PStack {TYPE_2__ l2; TYPE_1__ ma; } ;
struct FsmInst {struct PStack* userdata; } ;


 int FLG_L3_INIT ;
 int INDICATION ;
 int MDL_ERROR ;
 int establishlink (struct FsmInst*) ;
 int stub1 (struct PStack*,int,void*) ;
 int test_and_clear_bit (int ,int *) ;

__attribute__((used)) static void
nrerrorrecovery(struct FsmInst *fi)
{
 struct PStack *st = fi->userdata;

 st->ma.layer(st, MDL_ERROR | INDICATION, (void *) 'J');
 establishlink(fi);
 test_and_clear_bit(FLG_L3_INIT, &st->l2.flag);
}
