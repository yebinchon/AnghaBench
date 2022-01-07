
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ib_pd {int usecnt; } ;
struct ehca_shca {struct ehca_mr* maxmr; int ib_device; } ;
struct TYPE_4__ {int lkey; struct ib_pd* pd; } ;
struct TYPE_3__ {TYPE_2__ ib_mr; } ;
struct ehca_mr {TYPE_1__ ib; } ;


 int EINVAL ;
 int atomic_dec (int *) ;
 int ehca_dereg_mr (TYPE_2__*) ;
 int ehca_err (int *,char*,...) ;

int ehca_dereg_internal_maxmr(struct ehca_shca *shca)
{
 int ret;
 struct ehca_mr *e_maxmr;
 struct ib_pd *ib_pd;

 if (!shca->maxmr) {
  ehca_err(&shca->ib_device, "bad call, shca=%p", shca);
  ret = -EINVAL;
  goto ehca_dereg_internal_maxmr_exit0;
 }

 e_maxmr = shca->maxmr;
 ib_pd = e_maxmr->ib.ib_mr.pd;
 shca->maxmr = ((void*)0);

 ret = ehca_dereg_mr(&e_maxmr->ib.ib_mr);
 if (ret) {
  ehca_err(&shca->ib_device, "dereg internal max-MR failed, "
    "ret=%i e_maxmr=%p shca=%p lkey=%x",
    ret, e_maxmr, shca, e_maxmr->ib.ib_mr.lkey);
  shca->maxmr = e_maxmr;
  goto ehca_dereg_internal_maxmr_exit0;
 }

 atomic_dec(&ib_pd->usecnt);

ehca_dereg_internal_maxmr_exit0:
 if (ret)
  ehca_err(&shca->ib_device, "ret=%i shca=%p shca->maxmr=%p",
    ret, shca, shca->maxmr);
 return ret;
}
