
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct mlx4_ib_demux_pv_ctx {scalar_t__ state; scalar_t__ slave; int has_smi; int * cq; int * pd; int * mr; TYPE_3__* qp; int * wq; int work; struct ib_device* ib_dev; int port; } ;
struct ib_device {int dummy; } ;
struct TYPE_6__ {TYPE_1__* demux; } ;
struct TYPE_8__ {TYPE_2__ sriov; int dev; } ;
struct TYPE_7__ {int * qp; } ;
struct TYPE_5__ {int * wq; } ;


 scalar_t__ DEMUX_PV_STATE_ACTIVE ;
 scalar_t__ DEMUX_PV_STATE_DOWN ;
 scalar_t__ DEMUX_PV_STATE_STARTING ;
 int EEXIST ;
 int IB_ACCESS_LOCAL_WRITE ;
 int IB_CQ_NEXT_COMP ;
 scalar_t__ IB_LINK_LAYER_INFINIBAND ;
 int IB_QPT_GSI ;
 int IB_QPT_SMI ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ IS_ERR (int *) ;
 int MLX4_NUM_TUNNEL_BUFS ;
 int PTR_ERR (int *) ;
 int create_pv_sqp (struct mlx4_ib_demux_pv_ctx*,int ,int) ;
 int * ib_alloc_pd (struct ib_device*) ;
 int * ib_create_cq (struct ib_device*,int ,int *,struct mlx4_ib_demux_pv_ctx*,int,int ) ;
 int ib_dealloc_pd (int *) ;
 int ib_dereg_mr (int *) ;
 int ib_destroy_cq (int *) ;
 int ib_destroy_qp (int *) ;
 int * ib_get_dma_mr (int *,int ) ;
 int ib_req_notify_cq (int *,int ) ;
 int mlx4_ib_alloc_pv_bufs (struct mlx4_ib_demux_pv_ctx*,int ,int) ;
 int mlx4_ib_free_pv_qp_bufs (struct mlx4_ib_demux_pv_ctx*,int ,int) ;
 int mlx4_ib_sqp_comp_worker ;
 int mlx4_ib_tunnel_comp_handler ;
 int mlx4_ib_tunnel_comp_worker ;
 scalar_t__ mlx4_master_func_num (int ) ;
 int pr_err (char*,...) ;
 scalar_t__ rdma_port_get_link_layer (struct ib_device*,int ) ;
 TYPE_4__* to_mdev (struct ib_device*) ;

__attribute__((used)) static int create_pv_resources(struct ib_device *ibdev, int slave, int port,
          int create_tun, struct mlx4_ib_demux_pv_ctx *ctx)
{
 int ret, cq_size;

 if (ctx->state != DEMUX_PV_STATE_DOWN)
  return -EEXIST;

 ctx->state = DEMUX_PV_STATE_STARTING;

 if (ctx->slave == mlx4_master_func_num(to_mdev(ctx->ib_dev)->dev) &&
     rdma_port_get_link_layer(ibdev, ctx->port) == IB_LINK_LAYER_INFINIBAND)
  ctx->has_smi = 1;

 if (ctx->has_smi) {
  ret = mlx4_ib_alloc_pv_bufs(ctx, IB_QPT_SMI, create_tun);
  if (ret) {
   pr_err("Failed allocating qp0 tunnel bufs (%d)\n", ret);
   goto err_out;
  }
 }

 ret = mlx4_ib_alloc_pv_bufs(ctx, IB_QPT_GSI, create_tun);
 if (ret) {
  pr_err("Failed allocating qp1 tunnel bufs (%d)\n", ret);
  goto err_out_qp0;
 }

 cq_size = 2 * MLX4_NUM_TUNNEL_BUFS;
 if (ctx->has_smi)
  cq_size *= 2;

 ctx->cq = ib_create_cq(ctx->ib_dev, mlx4_ib_tunnel_comp_handler,
          ((void*)0), ctx, cq_size, 0);
 if (IS_ERR(ctx->cq)) {
  ret = PTR_ERR(ctx->cq);
  pr_err("Couldn't create tunnel CQ (%d)\n", ret);
  goto err_buf;
 }

 ctx->pd = ib_alloc_pd(ctx->ib_dev);
 if (IS_ERR(ctx->pd)) {
  ret = PTR_ERR(ctx->pd);
  pr_err("Couldn't create tunnel PD (%d)\n", ret);
  goto err_cq;
 }

 ctx->mr = ib_get_dma_mr(ctx->pd, IB_ACCESS_LOCAL_WRITE);
 if (IS_ERR(ctx->mr)) {
  ret = PTR_ERR(ctx->mr);
  pr_err("Couldn't get tunnel DMA MR (%d)\n", ret);
  goto err_pd;
 }

 if (ctx->has_smi) {
  ret = create_pv_sqp(ctx, IB_QPT_SMI, create_tun);
  if (ret) {
   pr_err("Couldn't create %s QP0 (%d)\n",
          create_tun ? "tunnel for" : "", ret);
   goto err_mr;
  }
 }

 ret = create_pv_sqp(ctx, IB_QPT_GSI, create_tun);
 if (ret) {
  pr_err("Couldn't create %s QP1 (%d)\n",
         create_tun ? "tunnel for" : "", ret);
  goto err_qp0;
 }

 if (create_tun)
  INIT_WORK(&ctx->work, mlx4_ib_tunnel_comp_worker);
 else
  INIT_WORK(&ctx->work, mlx4_ib_sqp_comp_worker);

 ctx->wq = to_mdev(ibdev)->sriov.demux[port - 1].wq;

 ret = ib_req_notify_cq(ctx->cq, IB_CQ_NEXT_COMP);
 if (ret) {
  pr_err("Couldn't arm tunnel cq (%d)\n", ret);
  goto err_wq;
 }
 ctx->state = DEMUX_PV_STATE_ACTIVE;
 return 0;

err_wq:
 ctx->wq = ((void*)0);
 ib_destroy_qp(ctx->qp[1].qp);
 ctx->qp[1].qp = ((void*)0);


err_qp0:
 if (ctx->has_smi)
  ib_destroy_qp(ctx->qp[0].qp);
 ctx->qp[0].qp = ((void*)0);

err_mr:
 ib_dereg_mr(ctx->mr);
 ctx->mr = ((void*)0);

err_pd:
 ib_dealloc_pd(ctx->pd);
 ctx->pd = ((void*)0);

err_cq:
 ib_destroy_cq(ctx->cq);
 ctx->cq = ((void*)0);

err_buf:
 mlx4_ib_free_pv_qp_bufs(ctx, IB_QPT_GSI, create_tun);

err_out_qp0:
 if (ctx->has_smi)
  mlx4_ib_free_pv_qp_bufs(ctx, IB_QPT_SMI, create_tun);
err_out:
 ctx->state = DEMUX_PV_STATE_DOWN;
 return ret;
}
