
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct dentry {int dummy; } ;


 int count_fops ;
 int oprofilefs_create_file (struct super_block*,struct dentry*,char*,int *) ;

__attribute__((used)) static int sh7750_ppc_create_files(struct super_block *sb, struct dentry *dir)
{
 return oprofilefs_create_file(sb, dir, "count", &count_fops);
}
