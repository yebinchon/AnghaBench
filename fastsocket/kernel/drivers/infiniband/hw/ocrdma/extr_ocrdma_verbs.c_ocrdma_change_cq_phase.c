
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct ocrdma_cqe {scalar_t__ flags_status_srcqpn; } ;
struct ocrdma_cq {int phase; scalar_t__ phase_change; } ;


 int OCRDMA_CQE_VALID ;

__attribute__((used)) static void ocrdma_change_cq_phase(struct ocrdma_cq *cq, struct ocrdma_cqe *cqe,
       u16 cur_getp)
{
 if (cq->phase_change) {
  if (cur_getp == 0)
   cq->phase = (~cq->phase & OCRDMA_CQE_VALID);
 } else

  cqe->flags_status_srcqpn = 0;
}
