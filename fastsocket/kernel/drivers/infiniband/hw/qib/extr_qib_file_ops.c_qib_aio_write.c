
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qib_user_sdma_queue {int dummy; } ;
struct qib_filedata {struct qib_user_sdma_queue* pq; } ;
struct qib_ctxtdata {int dummy; } ;
struct kiocb {TYPE_1__* ki_filp; } ;
struct iovec {int dummy; } ;
typedef int ssize_t ;
typedef int loff_t ;
struct TYPE_2__ {struct qib_filedata* private_data; } ;


 int EINVAL ;
 struct qib_ctxtdata* ctxt_fp (TYPE_1__*) ;
 int qib_user_sdma_writev (struct qib_ctxtdata*,struct qib_user_sdma_queue*,struct iovec const*,unsigned long) ;

__attribute__((used)) static ssize_t qib_aio_write(struct kiocb *iocb, const struct iovec *iov,
        unsigned long dim, loff_t off)
{
 struct qib_filedata *fp = iocb->ki_filp->private_data;
 struct qib_ctxtdata *rcd = ctxt_fp(iocb->ki_filp);
 struct qib_user_sdma_queue *pq = fp->pq;

 if (!dim || !pq)
  return -EINVAL;

 return qib_user_sdma_writev(rcd, pq, iov, dim);
}
