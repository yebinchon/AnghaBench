
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int comp; } ;
struct qib_mr {scalar_t__ umem; TYPE_1__ mr; } ;
struct ib_mr {int dummy; } ;


 int EBUSY ;
 int HZ ;
 int deinit_qib_mregion (TYPE_1__*) ;
 int ib_umem_release (scalar_t__) ;
 int kfree (struct qib_mr*) ;
 int qib_free_lkey (TYPE_1__*) ;
 int qib_get_mr (TYPE_1__*) ;
 int qib_put_mr (TYPE_1__*) ;
 struct qib_mr* to_imr (struct ib_mr*) ;
 unsigned long wait_for_completion_timeout (int *,int) ;

int qib_dereg_mr(struct ib_mr *ibmr)
{
 struct qib_mr *mr = to_imr(ibmr);
 int ret = 0;
 unsigned long timeout;

 qib_free_lkey(&mr->mr);

 qib_put_mr(&mr->mr);
 timeout = wait_for_completion_timeout(&mr->mr.comp,
  5 * HZ);
 if (!timeout) {
  qib_get_mr(&mr->mr);
  ret = -EBUSY;
  goto out;
 }
 deinit_qib_mregion(&mr->mr);
 if (mr->umem)
  ib_umem_release(mr->umem);
 kfree(mr);
out:
 return ret;
}
