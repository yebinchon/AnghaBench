
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct veth_lpevent {int dummy; } ;
struct veth_allocation {int num; int c; int member_1; int member_0; } ;
typedef int HvLpIndex ;


 int COMPLETION_INITIALIZER_ONSTACK (int ) ;
 int HvLpEvent_Type_VirtualLan ;
 int mf_allocate_lp_events (int ,int ,int,int,int *,struct veth_allocation*) ;
 int veth_complete_allocation ;
 int wait_for_completion (int *) ;

__attribute__((used)) static int veth_allocate_events(HvLpIndex rlp, int number)
{
 struct veth_allocation vc =
  { COMPLETION_INITIALIZER_ONSTACK(vc.c), 0 };

 mf_allocate_lp_events(rlp, HvLpEvent_Type_VirtualLan,
       sizeof(struct veth_lpevent), number,
       &veth_complete_allocation, &vc);
 wait_for_completion(&vc.c);

 return vc.num;
}
