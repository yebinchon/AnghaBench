
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct dentry {int dummy; } ;


 int ENOMEM ;
 struct dentry* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct dentry*) ;
 int REG_FILE_MODE ;
 int S_IFREG ;
 int hypfs_add_dentry (struct dentry*) ;
 struct dentry* hypfs_create_file (struct super_block*,struct dentry*,char const*,char*,int) ;
 int kfree (char*) ;
 char* kmalloc (scalar_t__,int ) ;
 int sprintf (char*,char*,char*) ;
 scalar_t__ strlen (char*) ;

struct dentry *hypfs_create_str(struct super_block *sb, struct dentry *dir,
    const char *name, char *string)
{
 char *buffer;
 struct dentry *dentry;

 buffer = kmalloc(strlen(string) + 2, GFP_KERNEL);
 if (!buffer)
  return ERR_PTR(-ENOMEM);
 sprintf(buffer, "%s\n", string);
 dentry =
     hypfs_create_file(sb, dir, name, buffer, S_IFREG | REG_FILE_MODE);
 if (IS_ERR(dentry)) {
  kfree(buffer);
  return ERR_PTR(-ENOMEM);
 }
 hypfs_add_dentry(dentry);
 return dentry;
}
