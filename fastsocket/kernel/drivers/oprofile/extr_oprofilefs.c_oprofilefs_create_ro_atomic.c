
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct dentry {int dummy; } ;
typedef int atomic_t ;


 int __oprofilefs_create_file (struct super_block*,struct dentry*,char const*,int *,int,int *) ;
 int atomic_ro_fops ;

int oprofilefs_create_ro_atomic(struct super_block *sb, struct dentry *root,
 char const *name, atomic_t *val)
{
 return __oprofilefs_create_file(sb, root, name,
     &atomic_ro_fops, 0444, val);
}
