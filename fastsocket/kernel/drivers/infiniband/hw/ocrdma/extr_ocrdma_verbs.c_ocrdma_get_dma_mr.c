
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_mr {int dummy; } ;
struct ocrdma_mr {struct ib_mr ibmr; } ;
struct ib_pd {int dummy; } ;


 struct ib_mr* ERR_CAST (struct ocrdma_mr*) ;
 scalar_t__ IS_ERR (struct ocrdma_mr*) ;
 int OCRDMA_ADDR_CHECK_DISABLE ;
 struct ocrdma_mr* ocrdma_alloc_lkey (struct ib_pd*,int,int ,int ) ;

struct ib_mr *ocrdma_get_dma_mr(struct ib_pd *ibpd, int acc)
{
 struct ocrdma_mr *mr;

 mr = ocrdma_alloc_lkey(ibpd, acc, 0, OCRDMA_ADDR_CHECK_DISABLE);
 if (IS_ERR(mr))
  return ERR_CAST(mr);

 return &mr->ibmr;
}
