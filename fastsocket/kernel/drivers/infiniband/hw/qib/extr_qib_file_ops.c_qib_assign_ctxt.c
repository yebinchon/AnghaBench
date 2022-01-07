
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct qib_user_info {int spu_userversion; unsigned int spu_port_alg; scalar_t__ spu_subctxt_cnt; } ;
struct qib_filedata {int rec_cpu_num; int pq; int subctxt; struct qib_ctxtdata* rcd; } ;
struct qib_devdata {int flags; TYPE_3__* pcidev; int unit; } ;
struct qib_ctxtdata {int ctxt; struct qib_devdata* dd; } ;
struct file {struct qib_filedata* private_data; TYPE_1__* f_dentry; } ;
struct TYPE_7__ {int dev; } ;
struct TYPE_6__ {int pid; int comm; } ;
struct TYPE_5__ {int d_inode; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int QIB_HAS_SEND_DMA ;
 unsigned int QIB_PORT_ALG_ACROSS ;
 unsigned int QIB_PORT_ALG_COUNT ;
 int QIB_USER_MINOR_BASE ;
 unsigned int QIB_USER_SWMAJOR ;
 int __set_bit (int,int ) ;
 int cpumask_first (int ) ;
 unsigned int cpumask_weight (int ) ;
 scalar_t__ ctxt_fp (struct file*) ;
 TYPE_2__* current ;
 int find_first_zero_bit (int ,unsigned int) ;
 int find_free_ctxt (int,struct file*,struct qib_user_info const*) ;
 int find_shared_ctxt (struct file*,struct qib_user_info const*) ;
 int get_a_ctxt (struct file*,struct qib_user_info const*,unsigned int) ;
 int iminor (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ qib_compatible_subctxts (unsigned int,unsigned int) ;
 int qib_cpulist ;
 unsigned int qib_cpulist_count ;
 int qib_devinfo (TYPE_3__*,char*,int ,int ,int ) ;
 int qib_mutex ;
 int qib_user_sdma_queue_create (int *,int ,int ,int ) ;
 scalar_t__ test_bit (int ,int ) ;
 int tsk_cpus_allowed (TYPE_2__*) ;

__attribute__((used)) static int qib_assign_ctxt(struct file *fp, const struct qib_user_info *uinfo)
{
 int ret;
 int i_minor;
 unsigned swmajor, swminor, alg = QIB_PORT_ALG_ACROSS;


 if (ctxt_fp(fp)) {
  ret = -EINVAL;
  goto done;
 }


 swmajor = uinfo->spu_userversion >> 16;
 if (swmajor != QIB_USER_SWMAJOR) {
  ret = -ENODEV;
  goto done;
 }

 swminor = uinfo->spu_userversion & 0xffff;

 if (swminor >= 11 && uinfo->spu_port_alg < QIB_PORT_ALG_COUNT)
  alg = uinfo->spu_port_alg;

 mutex_lock(&qib_mutex);

 if (qib_compatible_subctxts(swmajor, swminor) &&
     uinfo->spu_subctxt_cnt) {
  ret = find_shared_ctxt(fp, uinfo);
  if (ret) {
   if (ret > 0)
    ret = 0;
   goto done_chk_sdma;
  }
 }

 i_minor = iminor(fp->f_dentry->d_inode) - QIB_USER_MINOR_BASE;
 if (i_minor)
  ret = find_free_ctxt(i_minor - 1, fp, uinfo);
 else
  ret = get_a_ctxt(fp, uinfo, alg);

done_chk_sdma:
 if (!ret) {
  struct qib_filedata *fd = fp->private_data;
  const struct qib_ctxtdata *rcd = fd->rcd;
  const struct qib_devdata *dd = rcd->dd;
  unsigned int weight;

  if (dd->flags & QIB_HAS_SEND_DMA) {
   fd->pq = qib_user_sdma_queue_create(&dd->pcidev->dev,
           dd->unit,
           rcd->ctxt,
           fd->subctxt);
   if (!fd->pq)
    ret = -ENOMEM;
  }
  weight = cpumask_weight(tsk_cpus_allowed(current));
  if (!ret && weight >= qib_cpulist_count) {
   int cpu;
   cpu = find_first_zero_bit(qib_cpulist,
        qib_cpulist_count);
   if (cpu != qib_cpulist_count) {
    __set_bit(cpu, qib_cpulist);
    fd->rec_cpu_num = cpu;
   }
  } else if (weight == 1 &&
   test_bit(cpumask_first(tsk_cpus_allowed(current)),
     qib_cpulist))
   qib_devinfo(dd->pcidev,
    "%s PID %u affinity set to cpu %d; already allocated\n",
    current->comm, current->pid,
    cpumask_first(tsk_cpus_allowed(current)));
 }

 mutex_unlock(&qib_mutex);

done:
 return ret;
}
