
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int comp; } ;
struct qib_fmr {TYPE_1__ mr; } ;
struct ib_fmr {int dummy; } ;


 int EBUSY ;
 int HZ ;
 int deinit_qib_mregion (TYPE_1__*) ;
 int kfree (struct qib_fmr*) ;
 int qib_free_lkey (TYPE_1__*) ;
 int qib_get_mr (TYPE_1__*) ;
 int qib_put_mr (TYPE_1__*) ;
 struct qib_fmr* to_ifmr (struct ib_fmr*) ;
 unsigned long wait_for_completion_timeout (int *,int) ;

int qib_dealloc_fmr(struct ib_fmr *ibfmr)
{
 struct qib_fmr *fmr = to_ifmr(ibfmr);
 int ret = 0;
 unsigned long timeout;

 qib_free_lkey(&fmr->mr);
 qib_put_mr(&fmr->mr);
 timeout = wait_for_completion_timeout(&fmr->mr.comp,
  5 * HZ);
 if (!timeout) {
  qib_get_mr(&fmr->mr);
  ret = -EBUSY;
  goto out;
 }
 deinit_qib_mregion(&fmr->mr);
 kfree(fmr);
out:
 return ret;
}
