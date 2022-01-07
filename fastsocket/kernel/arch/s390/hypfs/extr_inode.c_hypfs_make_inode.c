
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {struct hypfs_sb_info* s_fs_info; } ;
struct inode {int i_mode; int i_nlink; int i_ctime; int i_mtime; int i_atime; int i_gid; int i_uid; } ;
struct hypfs_sb_info {int gid; int uid; } ;


 int CURRENT_TIME ;
 int S_IFDIR ;
 struct inode* new_inode (struct super_block*) ;

__attribute__((used)) static struct inode *hypfs_make_inode(struct super_block *sb, int mode)
{
 struct inode *ret = new_inode(sb);

 if (ret) {
  struct hypfs_sb_info *hypfs_info = sb->s_fs_info;
  ret->i_mode = mode;
  ret->i_uid = hypfs_info->uid;
  ret->i_gid = hypfs_info->gid;
  ret->i_atime = ret->i_mtime = ret->i_ctime = CURRENT_TIME;
  if (mode & S_IFDIR)
   ret->i_nlink = 2;
  else
   ret->i_nlink = 1;
 }
 return ret;
}
