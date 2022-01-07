
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_qp_context {int cqn_recv; } ;


 int be32_to_cpu (int ) ;

__attribute__((used)) static int qp_get_rcqn(struct mlx4_qp_context *qpc)
{
 return be32_to_cpu(qpc->cqn_recv) & 0xffffff;
}
