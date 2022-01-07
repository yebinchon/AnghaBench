
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mthca_cqe {int dummy; } ;
struct TYPE_2__ {int cqe; } ;
struct mthca_cq {int cons_index; TYPE_1__ ibcq; } ;


 struct mthca_cqe* cqe_sw (int ) ;
 int get_cqe (struct mthca_cq*,int) ;

__attribute__((used)) static inline struct mthca_cqe *next_cqe_sw(struct mthca_cq *cq)
{
 return cqe_sw(get_cqe(cq, cq->cons_index & cq->ibcq.cqe));
}
