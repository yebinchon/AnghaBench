
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct dentry {int dummy; } ;


 int __oprofilefs_create_file (struct super_block*,struct dentry*,char const*,int *,int,unsigned long*) ;
 int ulong_ro_fops ;

int oprofilefs_create_ro_ulong(struct super_block *sb, struct dentry *root,
 char const *name, unsigned long *val)
{
 return __oprofilefs_create_file(sb, root, name,
     &ulong_ro_fops, 0444, val);
}
