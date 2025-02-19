
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ipath_user_info {int spu_userversion; scalar_t__ spu_subport_cnt; } ;
struct ipath_portdata {int port_port; struct ipath_devdata* port_dd; } ;
struct ipath_filedata {int pq; int subport; struct ipath_portdata* pd; } ;
struct ipath_devdata {int ipath_unit; TYPE_3__* pcidev; } ;
struct TYPE_6__ {TYPE_1__* dentry; } ;
struct file {struct ipath_filedata* private_data; TYPE_2__ f_path; } ;
struct TYPE_8__ {scalar_t__ i_rdev; } ;
struct TYPE_7__ {int dev; } ;
struct TYPE_5__ {TYPE_4__* d_inode; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int IPATH_USER_MINOR_BASE ;
 unsigned int IPATH_USER_SWMAJOR ;
 unsigned int IPATH_USER_SWMINOR ;
 int VERBOSE ;
 int find_best_unit (struct file*,struct ipath_user_info const*) ;
 int find_free_port (int,struct file*,struct ipath_user_info const*) ;
 int find_shared_port (struct file*,struct ipath_user_info const*) ;
 int iminor (TYPE_4__*) ;
 int ipath_cdbg (int ,char*,long,int) ;
 scalar_t__ ipath_compatible_subports (unsigned int,unsigned int) ;
 int ipath_dbg (char*,unsigned int,unsigned int) ;
 int ipath_mutex ;
 int ipath_user_sdma_queue_create (int *,int ,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ port_fp (struct file*) ;

__attribute__((used)) static int ipath_assign_port(struct file *fp,
         const struct ipath_user_info *uinfo)
{
 int ret;
 int i_minor;
 unsigned swmajor, swminor;


 if (port_fp(fp)) {
  ret = -EINVAL;
  goto done;
 }


 swmajor = uinfo->spu_userversion >> 16;
 if (swmajor != IPATH_USER_SWMAJOR) {
  ipath_dbg("User major version %d not same as driver "
     "major %d\n", uinfo->spu_userversion >> 16,
     IPATH_USER_SWMAJOR);
  ret = -ENODEV;
  goto done;
 }

 swminor = uinfo->spu_userversion & 0xffff;
 if (swminor != IPATH_USER_SWMINOR)
  ipath_dbg("User minor version %d not same as driver "
     "minor %d\n", swminor, IPATH_USER_SWMINOR);

 mutex_lock(&ipath_mutex);

 if (ipath_compatible_subports(swmajor, swminor) &&
     uinfo->spu_subport_cnt &&
     (ret = find_shared_port(fp, uinfo))) {
  if (ret > 0)
   ret = 0;
  goto done_chk_sdma;
 }

 i_minor = iminor(fp->f_path.dentry->d_inode) - IPATH_USER_MINOR_BASE;
 ipath_cdbg(VERBOSE, "open on dev %lx (minor %d)\n",
     (long)fp->f_path.dentry->d_inode->i_rdev, i_minor);

 if (i_minor)
  ret = find_free_port(i_minor - 1, fp, uinfo);
 else
  ret = find_best_unit(fp, uinfo);

done_chk_sdma:
 if (!ret) {
  struct ipath_filedata *fd = fp->private_data;
  const struct ipath_portdata *pd = fd->pd;
  const struct ipath_devdata *dd = pd->port_dd;

  fd->pq = ipath_user_sdma_queue_create(&dd->pcidev->dev,
            dd->ipath_unit,
            pd->port_port,
            fd->subport);

  if (!fd->pq)
   ret = -ENOMEM;
 }

 mutex_unlock(&ipath_mutex);

done:
 return ret;
}
