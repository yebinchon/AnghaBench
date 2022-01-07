
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int d_drop (struct dentry*) ;
 int simple_rmdir (struct inode*,struct dentry*) ;
 int spufs_prune_dir (struct dentry*) ;

__attribute__((used)) static int spufs_rmdir(struct inode *parent, struct dentry *dir)
{

 spufs_prune_dir(dir);
 d_drop(dir);

 return simple_rmdir(parent, dir);
}
