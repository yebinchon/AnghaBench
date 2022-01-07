
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct layer2 {int flag; } ;
struct FsmInst {struct layer2* userdata; } ;


 int FLG_L3_INIT ;
 int MDL_ERROR_IND ;
 int establishlink (struct FsmInst*) ;
 int l2mgr (struct layer2*,int ,void*) ;
 int test_and_clear_bit (int ,int *) ;

__attribute__((used)) static void
l2_frame_error_reest(struct FsmInst *fi, int event, void *arg)
{
 struct layer2 *l2 = fi->userdata;

 l2mgr(l2, MDL_ERROR_IND, arg);
 establishlink(fi);
 test_and_clear_bit(FLG_L3_INIT, &l2->flag);
}
