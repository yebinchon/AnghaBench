
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x_virtf {int dummy; } ;
struct bnx2x_vfop_cmd {int block; int done; } ;
struct bnx2x_vfop {int dummy; } ;
struct bnx2x {int dummy; } ;


 int ENOMEM ;
 struct bnx2x_vfop* bnx2x_vfop_add (struct bnx2x*,struct bnx2x_virtf*) ;
 int bnx2x_vfop_opset (int,int ,int ) ;
 int bnx2x_vfop_release ;
 int bnx2x_vfop_transition (struct bnx2x*,struct bnx2x_virtf*,int ,int ) ;

int bnx2x_vfop_release_cmd(struct bnx2x *bp,
      struct bnx2x_virtf *vf,
      struct bnx2x_vfop_cmd *cmd)
{
 struct bnx2x_vfop *vfop = bnx2x_vfop_add(bp, vf);
 if (vfop) {
  bnx2x_vfop_opset(-1,
     bnx2x_vfop_release, cmd->done);
  return bnx2x_vfop_transition(bp, vf, bnx2x_vfop_release,
          cmd->block);
 }
 return -ENOMEM;
}
