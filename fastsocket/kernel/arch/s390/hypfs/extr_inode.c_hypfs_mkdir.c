
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct dentry {int dummy; } ;


 int DIR_MODE ;
 scalar_t__ IS_ERR (struct dentry*) ;
 int S_IFDIR ;
 int hypfs_add_dentry (struct dentry*) ;
 struct dentry* hypfs_create_file (struct super_block*,struct dentry*,char const*,int *,int) ;

struct dentry *hypfs_mkdir(struct super_block *sb, struct dentry *parent,
      const char *name)
{
 struct dentry *dentry;

 dentry = hypfs_create_file(sb, parent, name, ((void*)0), S_IFDIR | DIR_MODE);
 if (IS_ERR(dentry))
  return dentry;
 hypfs_add_dentry(dentry);
 return dentry;
}
