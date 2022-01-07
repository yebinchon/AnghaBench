
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int isgl; } ;
union t4_recv_wr {TYPE_1__ recv; } ;
typedef int u8 ;
struct ib_recv_wr {int num_sge; int sg_list; } ;
struct fw_ri_sge {int dummy; } ;
struct TYPE_5__ {size_t size; int * queue; } ;
struct TYPE_6__ {TYPE_2__ rq; } ;
struct c4iw_qp {TYPE_3__ wq; } ;
typedef int __be64 ;


 int DIV_ROUND_UP (int,int) ;
 int build_isgl (int *,int *,int *,int ,int,int *) ;

__attribute__((used)) static int build_rdma_recv(struct c4iw_qp *qhp, union t4_recv_wr *wqe,
      struct ib_recv_wr *wr, u8 *len16)
{
 int ret;

 ret = build_isgl((__be64 *)qhp->wq.rq.queue,
    (__be64 *)&qhp->wq.rq.queue[qhp->wq.rq.size],
    &wqe->recv.isgl, wr->sg_list, wr->num_sge, ((void*)0));
 if (ret)
  return ret;
 *len16 = DIV_ROUND_UP(sizeof wqe->recv +
         wr->num_sge * sizeof(struct fw_ri_sge), 16);
 return 0;
}
