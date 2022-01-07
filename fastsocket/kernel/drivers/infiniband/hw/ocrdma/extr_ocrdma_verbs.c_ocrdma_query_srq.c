
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocrdma_srq {int dummy; } ;
struct ib_srq_attr {int dummy; } ;
struct ib_srq {int dummy; } ;


 struct ocrdma_srq* get_ocrdma_srq (struct ib_srq*) ;
 int ocrdma_mbx_query_srq (struct ocrdma_srq*,struct ib_srq_attr*) ;

int ocrdma_query_srq(struct ib_srq *ibsrq, struct ib_srq_attr *srq_attr)
{
 int status;
 struct ocrdma_srq *srq;

 srq = get_ocrdma_srq(ibsrq);
 status = ocrdma_mbx_query_srq(srq, srq_attr);
 return status;
}
