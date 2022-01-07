
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bnx2x_virtf {int dummy; } ;
struct bnx2x_vfop_cmd {int block; int done; } ;
struct TYPE_3__ {int qid; } ;
struct TYPE_4__ {TYPE_1__ qx; } ;
struct bnx2x_vfop {TYPE_2__ args; } ;
struct bnx2x {int dummy; } ;


 int BNX2X_VFOP_QFLR_CLR_VLAN ;
 int ENOMEM ;
 struct bnx2x_vfop* bnx2x_vfop_add (struct bnx2x*,struct bnx2x_virtf*) ;
 int bnx2x_vfop_opset (int ,int ,int ) ;
 int bnx2x_vfop_qflr ;
 int bnx2x_vfop_transition (struct bnx2x*,struct bnx2x_virtf*,int ,int ) ;

__attribute__((used)) static int bnx2x_vfop_qflr_cmd(struct bnx2x *bp,
          struct bnx2x_virtf *vf,
          struct bnx2x_vfop_cmd *cmd,
          int qid)
{
 struct bnx2x_vfop *vfop = bnx2x_vfop_add(bp, vf);

 if (vfop) {
  vfop->args.qx.qid = qid;
  bnx2x_vfop_opset(BNX2X_VFOP_QFLR_CLR_VLAN,
     bnx2x_vfop_qflr, cmd->done);
  return bnx2x_vfop_transition(bp, vf, bnx2x_vfop_qflr,
          cmd->block);
 }
 return -ENOMEM;
}
