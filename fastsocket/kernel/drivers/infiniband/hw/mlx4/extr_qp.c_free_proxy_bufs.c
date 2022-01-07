
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int wqe_cnt; } ;
struct mlx4_ib_qp {TYPE_2__* sqp_proxy_rcv; TYPE_1__ rq; } ;
struct mlx4_ib_proxy_sqp_hdr {int dummy; } ;
struct ib_device {int dummy; } ;
struct TYPE_4__ {struct TYPE_4__* addr; int map; } ;


 int DMA_FROM_DEVICE ;
 int ib_dma_unmap_single (struct ib_device*,int ,int,int ) ;
 int kfree (TYPE_2__*) ;

__attribute__((used)) static void free_proxy_bufs(struct ib_device *dev, struct mlx4_ib_qp *qp)
{
 int i;

 for (i = 0; i < qp->rq.wqe_cnt; i++) {
  ib_dma_unmap_single(dev, qp->sqp_proxy_rcv[i].map,
        sizeof (struct mlx4_ib_proxy_sqp_hdr),
        DMA_FROM_DEVICE);
  kfree(qp->sqp_proxy_rcv[i].addr);
 }
 kfree(qp->sqp_proxy_rcv);
}
