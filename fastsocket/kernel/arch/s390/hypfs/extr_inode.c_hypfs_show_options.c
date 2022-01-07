
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vfsmount {TYPE_1__* mnt_sb; } ;
struct seq_file {int dummy; } ;
struct hypfs_sb_info {int gid; int uid; } ;
struct TYPE_2__ {struct hypfs_sb_info* s_fs_info; } ;


 int seq_printf (struct seq_file*,char*,int ) ;

__attribute__((used)) static int hypfs_show_options(struct seq_file *s, struct vfsmount *mnt)
{
 struct hypfs_sb_info *hypfs_info = mnt->mnt_sb->s_fs_info;

 seq_printf(s, ",uid=%u", hypfs_info->uid);
 seq_printf(s, ",gid=%u", hypfs_info->gid);
 return 0;
}
