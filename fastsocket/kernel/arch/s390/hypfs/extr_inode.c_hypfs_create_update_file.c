
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct dentry {int dummy; } ;


 int S_IFREG ;
 int UPDATE_FILE_MODE ;
 struct dentry* hypfs_create_file (struct super_block*,struct dentry*,char*,int *,int) ;

__attribute__((used)) static struct dentry *hypfs_create_update_file(struct super_block *sb,
            struct dentry *dir)
{
 struct dentry *dentry;

 dentry = hypfs_create_file(sb, dir, "update", ((void*)0),
       S_IFREG | UPDATE_FILE_MODE);





 return dentry;
}
