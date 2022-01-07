
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx4_cq {int dummy; } ;
struct ib_cq {int cq_context; int (* comp_handler ) (struct ib_cq*,int ) ;} ;
struct TYPE_2__ {struct ib_cq ibcq; } ;


 int stub1 (struct ib_cq*,int ) ;
 TYPE_1__* to_mibcq (struct mlx4_cq*) ;

__attribute__((used)) static void mlx4_ib_cq_comp(struct mlx4_cq *cq)
{
 struct ib_cq *ibcq = &to_mibcq(cq)->ibcq;
 ibcq->comp_handler(ibcq, ibcq->cq_context);
}
