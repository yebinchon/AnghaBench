
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_qp_context {int flags; } ;
struct mlx4_qp {int dummy; } ;
struct mlx4_mtt {int dummy; } ;
struct mlx4_dev {int dummy; } ;
typedef enum mlx4_qp_state { ____Placeholder_mlx4_qp_state } mlx4_qp_state ;


 int ARRAY_SIZE (int*) ;
 int MLX4_QP_STATE_INIT ;
 int MLX4_QP_STATE_RST ;
 int MLX4_QP_STATE_RTR ;
 int MLX4_QP_STATE_RTS ;
 int cpu_to_be32 (int) ;
 int mlx4_err (struct mlx4_dev*,char*,int,int) ;
 int mlx4_qp_modify (struct mlx4_dev*,struct mlx4_mtt*,int,int,struct mlx4_qp_context*,int ,int ,struct mlx4_qp*) ;

int mlx4_qp_to_ready(struct mlx4_dev *dev, struct mlx4_mtt *mtt,
       struct mlx4_qp_context *context,
       struct mlx4_qp *qp, enum mlx4_qp_state *qp_state)
{
 int err;
 int i;
 enum mlx4_qp_state states[] = {
  MLX4_QP_STATE_RST,
  MLX4_QP_STATE_INIT,
  MLX4_QP_STATE_RTR,
  MLX4_QP_STATE_RTS
 };

 for (i = 0; i < ARRAY_SIZE(states) - 1; i++) {
  context->flags &= cpu_to_be32(~(0xf << 28));
  context->flags |= cpu_to_be32(states[i + 1] << 28);
  err = mlx4_qp_modify(dev, mtt, states[i], states[i + 1],
         context, 0, 0, qp);
  if (err) {
   mlx4_err(dev, "Failed to bring QP to state: "
     "%d with error: %d\n",
     states[i + 1], err);
   return err;
  }

  *qp_state = states[i + 1];
 }

 return 0;
}
