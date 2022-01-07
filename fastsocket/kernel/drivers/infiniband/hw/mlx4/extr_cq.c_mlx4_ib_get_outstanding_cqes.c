
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int cons_index; } ;
struct TYPE_3__ {int cqe; } ;
struct mlx4_ib_cq {TYPE_2__ mcq; TYPE_1__ ibcq; } ;


 scalar_t__ get_sw_cqe (struct mlx4_ib_cq*,int) ;

__attribute__((used)) static int mlx4_ib_get_outstanding_cqes(struct mlx4_ib_cq *cq)
{
 u32 i;

 i = cq->mcq.cons_index;
 while (get_sw_cqe(cq, i & cq->ibcq.cqe))
  ++i;

 return i - cq->mcq.cons_index;
}
