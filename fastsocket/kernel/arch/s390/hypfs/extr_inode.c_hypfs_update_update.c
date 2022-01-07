
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {struct hypfs_sb_info* s_fs_info; } ;
struct inode {int i_ctime; int i_mtime; int i_atime; } ;
struct hypfs_sb_info {int last_update; TYPE_1__* update_file; } ;
struct TYPE_2__ {struct inode* d_inode; } ;


 int CURRENT_TIME ;
 int get_seconds () ;

__attribute__((used)) static void hypfs_update_update(struct super_block *sb)
{
 struct hypfs_sb_info *sb_info = sb->s_fs_info;
 struct inode *inode = sb_info->update_file->d_inode;

 sb_info->last_update = get_seconds();
 inode->i_atime = inode->i_mtime = inode->i_ctime = CURRENT_TIME;
}
