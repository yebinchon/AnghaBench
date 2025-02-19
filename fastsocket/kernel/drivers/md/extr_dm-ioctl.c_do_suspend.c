
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mapped_device {int dummy; } ;
struct dm_ioctl {int flags; } ;


 int DM_NOFLUSH_FLAG ;
 int DM_SKIP_LOCKFS_FLAG ;
 unsigned int DM_SUSPEND_LOCKFS_FLAG ;
 unsigned int DM_SUSPEND_NOFLUSH_FLAG ;
 int ENXIO ;
 int __dev_status (struct mapped_device*,struct dm_ioctl*) ;
 int dm_put (struct mapped_device*) ;
 int dm_suspend (struct mapped_device*,unsigned int) ;
 int dm_suspended_md (struct mapped_device*) ;
 struct mapped_device* find_device (struct dm_ioctl*) ;

__attribute__((used)) static int do_suspend(struct dm_ioctl *param)
{
 int r = 0;
 unsigned suspend_flags = DM_SUSPEND_LOCKFS_FLAG;
 struct mapped_device *md;

 md = find_device(param);
 if (!md)
  return -ENXIO;

 if (param->flags & DM_SKIP_LOCKFS_FLAG)
  suspend_flags &= ~DM_SUSPEND_LOCKFS_FLAG;
 if (param->flags & DM_NOFLUSH_FLAG)
  suspend_flags |= DM_SUSPEND_NOFLUSH_FLAG;

 if (!dm_suspended_md(md)) {
  r = dm_suspend(md, suspend_flags);
  if (r)
   goto out;
 }

 __dev_status(md, param);

out:
 dm_put(md);

 return r;
}
