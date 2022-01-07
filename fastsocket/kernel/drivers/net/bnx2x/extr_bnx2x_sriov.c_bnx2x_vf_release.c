
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x_virtf {int abs_vfid; } ;
struct bnx2x_vfop_cmd {int block; int * done; } ;
struct bnx2x {int dummy; } ;


 int CHANNEL_TLV_PF_RELEASE_VF ;
 int WARN (int,char*,int ,int) ;
 int bnx2x_lock_vf_pf_channel (struct bnx2x*,struct bnx2x_virtf*,int ) ;
 int bnx2x_vfop_release_cmd (struct bnx2x*,struct bnx2x_virtf*,struct bnx2x_vfop_cmd*) ;

void bnx2x_vf_release(struct bnx2x *bp, struct bnx2x_virtf *vf, bool block)
{
 struct bnx2x_vfop_cmd cmd = {
  .done = ((void*)0),
  .block = block,
 };
 int rc;
 bnx2x_lock_vf_pf_channel(bp, vf, CHANNEL_TLV_PF_RELEASE_VF);

 rc = bnx2x_vfop_release_cmd(bp, vf, &cmd);
 if (rc)
  WARN(rc,
       "VF[%d] Failed to allocate resources for release op- rc=%d\n",
       vf->abs_vfid, rc);
}
