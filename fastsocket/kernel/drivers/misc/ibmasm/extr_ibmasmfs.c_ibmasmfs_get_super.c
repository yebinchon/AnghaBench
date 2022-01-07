
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int dummy; } ;
struct file_system_type {int dummy; } ;


 int get_sb_single (struct file_system_type*,int,void*,int ,struct vfsmount*) ;
 int ibmasmfs_fill_super ;

__attribute__((used)) static int ibmasmfs_get_super(struct file_system_type *fst,
   int flags, const char *name, void *data,
   struct vfsmount *mnt)
{
 return get_sb_single(fst, flags, data, ibmasmfs_fill_super, mnt);
}
