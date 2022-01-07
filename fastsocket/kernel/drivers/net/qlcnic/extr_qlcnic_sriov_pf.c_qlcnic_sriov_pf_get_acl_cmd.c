
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct qlcnic_vport {int vlan_mode; int vlan; } ;
struct qlcnic_vf_info {struct qlcnic_vport* vp; } ;
struct TYPE_4__ {int* arg; } ;
struct qlcnic_cmd_args {TYPE_2__ rsp; } ;
struct qlcnic_bc_trans {TYPE_1__* req_hdr; struct qlcnic_vf_info* vf; } ;
struct TYPE_3__ {int cmd_op; } ;





__attribute__((used)) static int qlcnic_sriov_pf_get_acl_cmd(struct qlcnic_bc_trans *trans,
           struct qlcnic_cmd_args *cmd)
{
 struct qlcnic_vf_info *vf = trans->vf;
 struct qlcnic_vport *vp = vf->vp;
 u8 cmd_op, mode = vp->vlan_mode;

 cmd_op = trans->req_hdr->cmd_op;
 cmd->rsp.arg[0] = (cmd_op & 0xffff) | 14 << 16 | 1 << 25;

 switch (mode) {
 case 129:
  cmd->rsp.arg[1] = mode | 1 << 8;
  cmd->rsp.arg[2] = 1 << 16;
  break;
 case 128:
  cmd->rsp.arg[1] = mode | 1 << 8 | vp->vlan << 16;
  break;
 }

 return 0;
}
