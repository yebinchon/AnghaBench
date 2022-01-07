
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct res_qp {int ref_count; } ;
struct mlx4_vhcr {int in_modifier; int out_param; } ;
struct mlx4_resource_tracker {TYPE_3__* slave_list; } ;
struct TYPE_5__ {struct mlx4_resource_tracker res_tracker; } ;
struct TYPE_6__ {TYPE_1__ master; } ;
struct mlx4_priv {TYPE_2__ mfunc; } ;
struct mlx4_net_trans_rule_hw_eth {int dummy; } ;
struct mlx4_net_trans_rule_hw_ctrl {int qpn; } ;
struct TYPE_8__ {scalar_t__ steering_mode; } ;
struct mlx4_dev {TYPE_4__ caps; } ;
struct mlx4_cmd_mailbox {int dma; scalar_t__ buf; } ;
struct mlx4_cmd_info {int dummy; } ;
struct list_head {int dummy; } ;
struct _rule_hw {int id; } ;
struct TYPE_7__ {struct list_head* res_list; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int MLX4_CMD_NATIVE ;
 int MLX4_CMD_TIME_CLASS_A ;





 int MLX4_QP_FLOW_STEERING_ATTACH ;
 int MLX4_QP_FLOW_STEERING_DETACH ;
 scalar_t__ MLX4_STEERING_MODE_DEVICE_MANAGED ;
 int RES_FS_RULE ;
 size_t RES_MAC ;
 int RES_QP ;
 int add_eth_header (struct mlx4_dev*,int,struct mlx4_cmd_mailbox*,struct list_head*,int) ;
 int add_res_range (struct mlx4_dev*,int,int ,int,int ,int) ;
 int atomic_inc (int *) ;
 int be16_to_cpu (int ) ;
 int be32_to_cpu (int ) ;
 int get_res (struct mlx4_dev*,int,int,int ,struct res_qp**) ;
 int map_hw_to_sw_id (int ) ;
 int mlx4_cmd (struct mlx4_dev*,int ,int ,int ,int ,int ,int ) ;
 int mlx4_cmd_imm (struct mlx4_dev*,int ,int *,int,int ,int ,int ,int ) ;
 int mlx4_err (struct mlx4_dev*,char*) ;
 struct mlx4_priv* mlx4_priv (struct mlx4_dev*) ;
 int pr_err (char*,...) ;
 int pr_warn (char*) ;
 int put_res (struct mlx4_dev*,int,int,int ) ;
 int validate_eth_header_mac (int,struct _rule_hw*,struct list_head*) ;

int mlx4_QP_FLOW_STEERING_ATTACH_wrapper(struct mlx4_dev *dev, int slave,
      struct mlx4_vhcr *vhcr,
      struct mlx4_cmd_mailbox *inbox,
      struct mlx4_cmd_mailbox *outbox,
      struct mlx4_cmd_info *cmd)
{

 struct mlx4_priv *priv = mlx4_priv(dev);
 struct mlx4_resource_tracker *tracker = &priv->mfunc.master.res_tracker;
 struct list_head *rlist = &tracker->slave_list[slave].res_list[RES_MAC];
 int err;
 int qpn;
 struct res_qp *rqp;
 struct mlx4_net_trans_rule_hw_ctrl *ctrl;
 struct _rule_hw *rule_header;
 int header_id;

 if (dev->caps.steering_mode !=
     MLX4_STEERING_MODE_DEVICE_MANAGED)
  return -EOPNOTSUPP;

 ctrl = (struct mlx4_net_trans_rule_hw_ctrl *)inbox->buf;
 qpn = be32_to_cpu(ctrl->qpn) & 0xffffff;
 err = get_res(dev, slave, qpn, RES_QP, &rqp);
 if (err) {
  pr_err("Steering rule with qpn 0x%x rejected.\n", qpn);
  return err;
 }
 rule_header = (struct _rule_hw *)(ctrl + 1);
 header_id = map_hw_to_sw_id(be16_to_cpu(rule_header->id));

 switch (header_id) {
 case 132:
  if (validate_eth_header_mac(slave, rule_header, rlist)) {
   err = -EINVAL;
   goto err_put;
  }
  break;
 case 131:
  break;
 case 130:
 case 129:
 case 128:
  pr_warn("Can't attach FS rule without L2 headers, adding L2 header.\n");
  if (add_eth_header(dev, slave, inbox, rlist, header_id)) {
   err = -EINVAL;
   goto err_put;
  }
  vhcr->in_modifier +=
   sizeof(struct mlx4_net_trans_rule_hw_eth) >> 2;
  break;
 default:
  pr_err("Corrupted mailbox.\n");
  err = -EINVAL;
  goto err_put;
 }

 err = mlx4_cmd_imm(dev, inbox->dma, &vhcr->out_param,
      vhcr->in_modifier, 0,
      MLX4_QP_FLOW_STEERING_ATTACH, MLX4_CMD_TIME_CLASS_A,
      MLX4_CMD_NATIVE);
 if (err)
  goto err_put;

 err = add_res_range(dev, slave, vhcr->out_param, 1, RES_FS_RULE, qpn);
 if (err) {
  mlx4_err(dev, "Fail to add flow steering resources.\n ");

  mlx4_cmd(dev, vhcr->out_param, 0, 0,
    MLX4_QP_FLOW_STEERING_DETACH, MLX4_CMD_TIME_CLASS_A,
    MLX4_CMD_NATIVE);
  goto err_put;
 }
 atomic_inc(&rqp->ref_count);
err_put:
 put_res(dev, slave, qpn, RES_QP);
 return err;
}
