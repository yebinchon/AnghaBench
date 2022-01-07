
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ fr_mr; int lkey; struct ocrdma_dev* dev; } ;
struct ocrdma_mr {scalar_t__ umem; TYPE_1__ hwmr; } ;
struct ocrdma_dev {int dummy; } ;
struct ib_mr {int dummy; } ;


 struct ocrdma_mr* get_ocrdma_mr (struct ib_mr*) ;
 int ib_umem_release (scalar_t__) ;
 int kfree (struct ocrdma_mr*) ;
 int ocrdma_free_mr_pbl_tbl (struct ocrdma_dev*,TYPE_1__*) ;
 int ocrdma_mbx_dealloc_lkey (struct ocrdma_dev*,scalar_t__,int ) ;

int ocrdma_dereg_mr(struct ib_mr *ib_mr)
{
 struct ocrdma_mr *mr = get_ocrdma_mr(ib_mr);
 struct ocrdma_dev *dev = mr->hwmr.dev;
 int status;

 status = ocrdma_mbx_dealloc_lkey(dev, mr->hwmr.fr_mr, mr->hwmr.lkey);

 if (mr->hwmr.fr_mr == 0)
  ocrdma_free_mr_pbl_tbl(dev, &mr->hwmr);


 if (mr->umem)
  ib_umem_release(mr->umem);
 kfree(mr);
 return status;
}
