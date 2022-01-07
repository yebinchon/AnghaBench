
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
struct mlx4_vhcr_cmd {int flags; void* status; void* out_param; void* token; void* opcode; int in_modifier; void* in_param; } ;
struct TYPE_6__ {int slave_cmd_mutex; int use_events; } ;
struct TYPE_4__ {struct mlx4_vhcr_cmd* vhcr; } ;
struct mlx4_priv {TYPE_3__ cmd; TYPE_1__ mfunc; } ;
struct TYPE_5__ {int function; } ;
struct mlx4_dev {TYPE_2__ caps; } ;


 int CMD_POLL_TOKEN ;
 void* CMD_STAT_BAD_PARAM ;
 int MLX4_COMM_CMD_VHCR_POST ;
 scalar_t__ MLX4_COMM_TIME ;
 int be64_to_cpu (void*) ;
 void* cpu_to_be16 (int) ;
 int cpu_to_be32 (int ) ;
 void* cpu_to_be64 (int ) ;
 int mlx4_comm_cmd (struct mlx4_dev*,int ,int ,scalar_t__) ;
 int mlx4_err (struct mlx4_dev*,char*,int) ;
 scalar_t__ mlx4_is_master (struct mlx4_dev*) ;
 int mlx4_master_process_vhcr (struct mlx4_dev*,int ,struct mlx4_vhcr_cmd*) ;
 struct mlx4_priv* mlx4_priv (struct mlx4_dev*) ;
 int mlx4_status_to_errno (void*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int mlx4_slave_cmd(struct mlx4_dev *dev, u64 in_param, u64 *out_param,
     int out_is_imm, u32 in_modifier, u8 op_modifier,
     u16 op, unsigned long timeout)
{
 struct mlx4_priv *priv = mlx4_priv(dev);
 struct mlx4_vhcr_cmd *vhcr = priv->mfunc.vhcr;
 int ret;

 mutex_lock(&priv->cmd.slave_cmd_mutex);

 vhcr->in_param = cpu_to_be64(in_param);
 vhcr->out_param = out_param ? cpu_to_be64(*out_param) : 0;
 vhcr->in_modifier = cpu_to_be32(in_modifier);
 vhcr->opcode = cpu_to_be16((((u16) op_modifier) << 12) | (op & 0xfff));
 vhcr->token = cpu_to_be16(CMD_POLL_TOKEN);
 vhcr->status = 0;
 vhcr->flags = !!(priv->cmd.use_events) << 6;

 if (mlx4_is_master(dev)) {
  ret = mlx4_master_process_vhcr(dev, dev->caps.function, vhcr);
  if (!ret) {
   if (out_is_imm) {
    if (out_param)
     *out_param =
      be64_to_cpu(vhcr->out_param);
    else {
     mlx4_err(dev, "response expected while"
       "output mailbox is NULL for "
       "command 0x%x\n", op);
     vhcr->status = CMD_STAT_BAD_PARAM;
    }
   }
   ret = mlx4_status_to_errno(vhcr->status);
  }
 } else {
  ret = mlx4_comm_cmd(dev, MLX4_COMM_CMD_VHCR_POST, 0,
        MLX4_COMM_TIME + timeout);
  if (!ret) {
   if (out_is_imm) {
    if (out_param)
     *out_param =
      be64_to_cpu(vhcr->out_param);
    else {
     mlx4_err(dev, "response expected while"
       "output mailbox is NULL for "
       "command 0x%x\n", op);
     vhcr->status = CMD_STAT_BAD_PARAM;
    }
   }
   ret = mlx4_status_to_errno(vhcr->status);
  } else
   mlx4_err(dev, "failed execution of VHCR_POST command"
     "opcode 0x%x\n", op);
 }

 mutex_unlock(&priv->cmd.slave_cmd_mutex);
 return ret;
}
