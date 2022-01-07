
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocrdma_cqe {int flags_status_srcqpn; } ;


 int OCRDMA_CQE_QTYPE ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static inline int is_cqe_for_sq(struct ocrdma_cqe *cqe)
{
 return (le32_to_cpu(cqe->flags_status_srcqpn) &
  OCRDMA_CQE_QTYPE) ? 0 : 1;
}
