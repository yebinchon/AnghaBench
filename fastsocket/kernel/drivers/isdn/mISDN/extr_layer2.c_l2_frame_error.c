
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct layer2 {int dummy; } ;
struct FsmInst {struct layer2* userdata; } ;


 int MDL_ERROR_IND ;
 int l2mgr (struct layer2*,int ,void*) ;

__attribute__((used)) static void
l2_frame_error(struct FsmInst *fi, int event, void *arg)
{
 struct layer2 *l2 = fi->userdata;

 l2mgr(l2, MDL_ERROR_IND, arg);
}
