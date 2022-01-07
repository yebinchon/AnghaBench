
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct dentry {int dummy; } ;
typedef scalar_t__ __u64 ;


 int ENOMEM ;
 struct dentry* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct dentry*) ;
 int REG_FILE_MODE ;
 int S_IFREG ;
 int TMP_SIZE ;
 int hypfs_add_dentry (struct dentry*) ;
 struct dentry* hypfs_create_file (struct super_block*,struct dentry*,char const*,char*,int) ;
 int kfree (char*) ;
 char* kstrdup (char*,int ) ;
 int snprintf (char*,int,char*,unsigned long long) ;

struct dentry *hypfs_create_u64(struct super_block *sb, struct dentry *dir,
    const char *name, __u64 value)
{
 char *buffer;
 char tmp[TMP_SIZE];
 struct dentry *dentry;

 snprintf(tmp, TMP_SIZE, "%llu\n", (unsigned long long int)value);
 buffer = kstrdup(tmp, GFP_KERNEL);
 if (!buffer)
  return ERR_PTR(-ENOMEM);
 dentry =
     hypfs_create_file(sb, dir, name, buffer, S_IFREG | REG_FILE_MODE);
 if (IS_ERR(dentry)) {
  kfree(buffer);
  return ERR_PTR(-ENOMEM);
 }
 hypfs_add_dentry(dentry);
 return dentry;
}
