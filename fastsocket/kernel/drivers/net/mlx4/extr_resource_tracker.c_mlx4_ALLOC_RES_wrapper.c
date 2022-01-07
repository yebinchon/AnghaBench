
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_vhcr {int op_modifier; int in_modifier; int out_param; int in_param; } ;
struct mlx4_dev {int dummy; } ;
struct mlx4_cmd_mailbox {int dummy; } ;
struct mlx4_cmd_info {int dummy; } ;


 int EINVAL ;
 int counter_alloc_res (struct mlx4_dev*,int,int,int,int ,int *) ;
 int cq_alloc_res (struct mlx4_dev*,int,int,int,int ,int *) ;
 int mac_alloc_res (struct mlx4_dev*,int,int,int,int ,int *) ;
 int mpt_alloc_res (struct mlx4_dev*,int,int,int,int ,int *) ;
 int mtt_alloc_res (struct mlx4_dev*,int,int,int,int ,int *) ;
 int qp_alloc_res (struct mlx4_dev*,int,int,int,int ,int *) ;
 int srq_alloc_res (struct mlx4_dev*,int,int,int,int ,int *) ;
 int vlan_alloc_res (struct mlx4_dev*,int,int,int,int ,int *) ;
 int xrcdn_alloc_res (struct mlx4_dev*,int,int,int,int ,int *) ;

int mlx4_ALLOC_RES_wrapper(struct mlx4_dev *dev, int slave,
      struct mlx4_vhcr *vhcr,
      struct mlx4_cmd_mailbox *inbox,
      struct mlx4_cmd_mailbox *outbox,
      struct mlx4_cmd_info *cmd)
{
 int err;
 int alop = vhcr->op_modifier;

 switch (vhcr->in_modifier) {
 case 131:
  err = qp_alloc_res(dev, slave, vhcr->op_modifier, alop,
       vhcr->in_param, &vhcr->out_param);
  break;

 case 132:
  err = mtt_alloc_res(dev, slave, vhcr->op_modifier, alop,
        vhcr->in_param, &vhcr->out_param);
  break;

 case 133:
  err = mpt_alloc_res(dev, slave, vhcr->op_modifier, alop,
        vhcr->in_param, &vhcr->out_param);
  break;

 case 135:
  err = cq_alloc_res(dev, slave, vhcr->op_modifier, alop,
       vhcr->in_param, &vhcr->out_param);
  break;

 case 130:
  err = srq_alloc_res(dev, slave, vhcr->op_modifier, alop,
        vhcr->in_param, &vhcr->out_param);
  break;

 case 134:
  err = mac_alloc_res(dev, slave, vhcr->op_modifier, alop,
        vhcr->in_param, &vhcr->out_param);
  break;

 case 129:
  err = vlan_alloc_res(dev, slave, vhcr->op_modifier, alop,
        vhcr->in_param, &vhcr->out_param);
  break;

 case 136:
  err = counter_alloc_res(dev, slave, vhcr->op_modifier, alop,
     vhcr->in_param, &vhcr->out_param);
  break;

 case 128:
  err = xrcdn_alloc_res(dev, slave, vhcr->op_modifier, alop,
          vhcr->in_param, &vhcr->out_param);
  break;

 default:
  err = -EINVAL;
  break;
 }

 return err;
}
