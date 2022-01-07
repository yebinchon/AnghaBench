
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct file_operations {int dummy; } ;
struct dentry {int dummy; } ;


 int __oprofilefs_create_file (struct super_block*,struct dentry*,char const*,struct file_operations const*,int,int *) ;

int oprofilefs_create_file(struct super_block *sb, struct dentry *root,
 char const *name, const struct file_operations *fops)
{
 return __oprofilefs_create_file(sb, root, name, fops, 0644, ((void*)0));
}
