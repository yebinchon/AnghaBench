
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x_virtf {int state; int abs_vfid; } ;
struct bnx2x_vfop_cmd {void (* done ) (struct bnx2x*,struct bnx2x_virtf*) ;int block; } ;
struct bnx2x_vfop {scalar_t__ rc; } ;
struct bnx2x {int dummy; } ;


 int BNX2X_ERR (char*,int ,scalar_t__) ;
 int BNX2X_MSG_IOV ;
 int DP (int ,char*,...) ;




 int bnx2x_vf_free_resc (struct bnx2x*,struct bnx2x_virtf*) ;
 scalar_t__ bnx2x_vfop_close_cmd (struct bnx2x*,struct bnx2x_virtf*,struct bnx2x_vfop_cmd*) ;
 struct bnx2x_vfop* bnx2x_vfop_cur (struct bnx2x*,struct bnx2x_virtf*) ;
 int bnx2x_vfop_default (int) ;
 int bnx2x_vfop_end (struct bnx2x*,struct bnx2x_virtf*,struct bnx2x_vfop*) ;

__attribute__((used)) static void bnx2x_vfop_release(struct bnx2x *bp, struct bnx2x_virtf *vf)
{
 struct bnx2x_vfop *vfop = bnx2x_vfop_cur(bp, vf);
 struct bnx2x_vfop_cmd cmd = {
  .done = bnx2x_vfop_release,
  .block = 0,
 };

 DP(BNX2X_MSG_IOV, "vfop->rc %d\n", vfop->rc);

 if (vfop->rc < 0)
  goto op_err;

 DP(BNX2X_MSG_IOV, "VF[%d] STATE: %s\n", vf->abs_vfid,
    vf->state == 129 ? "Free" :
    vf->state == 131 ? "Acquired" :
    vf->state == 130 ? "Enabled" :
    vf->state == 128 ? "Reset" :
    "Unknown");

 switch (vf->state) {
 case 130:
  vfop->rc = bnx2x_vfop_close_cmd(bp, vf, &cmd);
  if (vfop->rc)
   goto op_err;
  return;

 case 131:
  DP(BNX2X_MSG_IOV, "about to free resources\n");
  bnx2x_vf_free_resc(bp, vf);
  DP(BNX2X_MSG_IOV, "vfop->rc %d\n", vfop->rc);
  goto op_done;

 case 129:
 case 128:

  goto op_done;
 default:
  bnx2x_vfop_default(vf->state);
 }
op_err:
 BNX2X_ERR("VF[%d] RELEASE error: rc %d\n", vf->abs_vfid, vfop->rc);
op_done:
 bnx2x_vfop_end(bp, vf, vfop);
}
