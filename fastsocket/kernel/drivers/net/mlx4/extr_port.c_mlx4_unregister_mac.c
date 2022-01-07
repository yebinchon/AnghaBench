
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct mlx4_dev {int dummy; } ;


 int MLX4_CMD_FREE_RES ;
 int MLX4_CMD_TIME_CLASS_A ;
 int MLX4_CMD_WRAPPED ;
 int RES_MAC ;
 int RES_OP_RESERVE_AND_MAP ;
 int __mlx4_unregister_mac (struct mlx4_dev*,int ,int ) ;
 int mlx4_cmd_imm (struct mlx4_dev*,int ,int *,int ,int ,int ,int ,int ) ;
 scalar_t__ mlx4_is_mfunc (struct mlx4_dev*) ;
 int set_param_l (int *,int ) ;

void mlx4_unregister_mac(struct mlx4_dev *dev, u8 port, u64 mac)
{
 u64 out_param = 0;

 if (mlx4_is_mfunc(dev)) {
  set_param_l(&out_param, port);
  (void) mlx4_cmd_imm(dev, mac, &out_param, RES_MAC,
        RES_OP_RESERVE_AND_MAP, MLX4_CMD_FREE_RES,
        MLX4_CMD_TIME_CLASS_A, MLX4_CMD_WRAPPED);
  return;
 }
 __mlx4_unregister_mac(dev, port, mac);
 return;
}
