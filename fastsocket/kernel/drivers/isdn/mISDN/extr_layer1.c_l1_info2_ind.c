
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct layer1 {int dch; int (* dcb ) (int ,int ) ;} ;
struct FsmInst {struct layer1* userdata; } ;


 int INFO3_P8 ;
 int ST_L1_F6 ;
 int mISDN_FsmChangeState (struct FsmInst*,int ) ;
 int stub1 (int ,int ) ;

__attribute__((used)) static void
l1_info2_ind(struct FsmInst *fi, int event, void *arg)
{
 struct layer1 *l1 = fi->userdata;

 mISDN_FsmChangeState(fi, ST_L1_F6);
 l1->dcb(l1->dch, INFO3_P8);
}
