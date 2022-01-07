
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
struct mlx4_dev {int pdev; } ;
struct TYPE_3__ {scalar_t__ use_events; } ;
struct TYPE_4__ {TYPE_1__ cmd; } ;


 int EIO ;
 int mlx4_cmd_poll (struct mlx4_dev*,int ,int *,int,int ,int ,int ,unsigned long) ;
 int mlx4_cmd_wait (struct mlx4_dev*,int ,int *,int,int ,int ,int ,unsigned long) ;
 scalar_t__ mlx4_is_master (struct mlx4_dev*) ;
 int mlx4_is_mfunc (struct mlx4_dev*) ;
 TYPE_2__* mlx4_priv (struct mlx4_dev*) ;
 int mlx4_slave_cmd (struct mlx4_dev*,int ,int *,int,int ,int ,int ,unsigned long) ;
 scalar_t__ pci_channel_offline (int ) ;

int __mlx4_cmd(struct mlx4_dev *dev, u64 in_param, u64 *out_param,
        int out_is_imm, u32 in_modifier, u8 op_modifier,
        u16 op, unsigned long timeout, int native)
{
 if (pci_channel_offline(dev->pdev))
  return -EIO;

 if (!mlx4_is_mfunc(dev) || (native && mlx4_is_master(dev))) {
  if (mlx4_priv(dev)->cmd.use_events)
   return mlx4_cmd_wait(dev, in_param, out_param,
          out_is_imm, in_modifier,
          op_modifier, op, timeout);
  else
   return mlx4_cmd_poll(dev, in_param, out_param,
          out_is_imm, in_modifier,
          op_modifier, op, timeout);
 }
 return mlx4_slave_cmd(dev, in_param, out_param, out_is_imm,
         in_modifier, op_modifier, op, timeout);
}
