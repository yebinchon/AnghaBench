
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file_operations {int dummy; } ;
struct dentry {TYPE_1__* d_inode; } ;
typedef int mode_t ;
struct TYPE_2__ {int i_mutex; } ;


 int IS_ERR (struct dentry*) ;
 int PTR_ERR (struct dentry*) ;
 int ipathfs_mknod (TYPE_1__*,struct dentry*,int ,struct file_operations const*,void*) ;
 struct dentry* lookup_one_len (char const*,struct dentry*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int strlen (char const*) ;

__attribute__((used)) static int create_file(const char *name, mode_t mode,
         struct dentry *parent, struct dentry **dentry,
         const struct file_operations *fops, void *data)
{
 int error;

 *dentry = ((void*)0);
 mutex_lock(&parent->d_inode->i_mutex);
 *dentry = lookup_one_len(name, parent, strlen(name));
 if (!IS_ERR(*dentry))
  error = ipathfs_mknod(parent->d_inode, *dentry,
          mode, fops, data);
 else
  error = PTR_ERR(*dentry);
 mutex_unlock(&parent->d_inode->i_mutex);

 return error;
}
