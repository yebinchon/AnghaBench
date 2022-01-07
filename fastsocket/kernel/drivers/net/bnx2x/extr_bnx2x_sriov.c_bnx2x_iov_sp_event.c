
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x_virtf {int op_in_progress; } ;
struct bnx2x {int sp_task; } ;


 int IS_SRIOV (struct bnx2x*) ;
 int atomic_set (int *,int) ;
 int bnx2x_iov_is_vf_cid (struct bnx2x*,int) ;
 struct bnx2x_virtf* bnx2x_vf_by_cid (struct bnx2x*,int) ;
 int bnx2x_wq ;
 int queue_delayed_work (int ,int *,int ) ;

void bnx2x_iov_sp_event(struct bnx2x *bp, int vf_cid, bool queue_work)
{
 struct bnx2x_virtf *vf;


 if (!IS_SRIOV(bp) || !bnx2x_iov_is_vf_cid(bp, vf_cid))
  return;

 vf = bnx2x_vf_by_cid(bp, vf_cid);
 if (vf) {

  atomic_set(&vf->op_in_progress, 1);
  if (queue_work)
   queue_delayed_work(bnx2x_wq, &bp->sp_task, 0);
 }
}
