
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kiocb {struct file* ki_filp; } ;
struct ipath_user_sdma_queue {int dummy; } ;
struct ipath_portdata {int port_dd; } ;
struct ipath_filedata {struct ipath_user_sdma_queue* pq; } ;
struct iovec {int dummy; } ;
struct file {struct ipath_filedata* private_data; } ;
typedef int ssize_t ;
typedef int loff_t ;


 int EINVAL ;
 int ipath_user_sdma_writev (int ,struct ipath_user_sdma_queue*,struct iovec const*,unsigned long) ;
 struct ipath_portdata* port_fp (struct file*) ;

__attribute__((used)) static ssize_t ipath_writev(struct kiocb *iocb, const struct iovec *iov,
       unsigned long dim, loff_t off)
{
 struct file *filp = iocb->ki_filp;
 struct ipath_filedata *fp = filp->private_data;
 struct ipath_portdata *pd = port_fp(filp);
 struct ipath_user_sdma_queue *pq = fp->pq;

 if (!dim)
  return -EINVAL;

 return ipath_user_sdma_writev(pd->port_dd, pq, iov, dim);
}
