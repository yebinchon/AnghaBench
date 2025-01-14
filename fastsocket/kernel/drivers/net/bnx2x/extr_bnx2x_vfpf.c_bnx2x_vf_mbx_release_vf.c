
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x_virtf {int op_rc; int abs_vfid; } ;
struct bnx2x_vfop_cmd {int block; int (* done ) (struct bnx2x*,struct bnx2x_virtf*) ;} ;
struct bnx2x_vf_mbx {int dummy; } ;
struct bnx2x {int dummy; } ;


 int BNX2X_MSG_IOV ;
 int DP (int ,char*,int ) ;
 int bnx2x_vf_mbx_resp (struct bnx2x*,struct bnx2x_virtf*) ;
 int bnx2x_vfop_release_cmd (struct bnx2x*,struct bnx2x_virtf*,struct bnx2x_vfop_cmd*) ;

__attribute__((used)) static void bnx2x_vf_mbx_release_vf(struct bnx2x *bp, struct bnx2x_virtf *vf,
        struct bnx2x_vf_mbx *mbx)
{
 struct bnx2x_vfop_cmd cmd = {
  .done = bnx2x_vf_mbx_resp,
  .block = 0,
 };

 DP(BNX2X_MSG_IOV, "VF[%d] VF_RELEASE\n", vf->abs_vfid);

 vf->op_rc = bnx2x_vfop_release_cmd(bp, vf, &cmd);
 if (vf->op_rc)
  bnx2x_vf_mbx_resp(bp, vf);
}
