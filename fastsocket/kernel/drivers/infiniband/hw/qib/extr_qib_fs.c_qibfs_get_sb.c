
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int mnt_sb; } ;
struct file_system_type {int dummy; } ;


 int get_sb_single (struct file_system_type*,int,void*,int ,struct vfsmount*) ;
 int qib_super ;
 int qibfs_fill_super ;

__attribute__((used)) static int qibfs_get_sb(struct file_system_type *fs_type, int flags,
   const char *dev_name, void *data, struct vfsmount *mnt)
{
 int ret = get_sb_single(fs_type, flags, data,
    qibfs_fill_super, mnt);
 if (ret >= 0)
  qib_super = mnt->mnt_sb;
 return ret;
}
