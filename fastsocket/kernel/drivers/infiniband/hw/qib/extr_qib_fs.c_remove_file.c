
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int d_lock; scalar_t__ d_inode; } ;


 scalar_t__ IS_ERR (struct dentry*) ;
 int PTR_ERR (struct dentry*) ;
 int __d_drop (struct dentry*) ;
 scalar_t__ d_unhashed (struct dentry*) ;
 int dcache_lock ;
 int dget_locked (struct dentry*) ;
 struct dentry* lookup_one_len (char*,struct dentry*,int ) ;
 int simple_unlink (scalar_t__,struct dentry*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int strlen (char*) ;

__attribute__((used)) static int remove_file(struct dentry *parent, char *name)
{
 struct dentry *tmp;
 int ret;

 tmp = lookup_one_len(name, parent, strlen(name));

 if (IS_ERR(tmp)) {
  ret = PTR_ERR(tmp);
  goto bail;
 }

 spin_lock(&dcache_lock);
 spin_lock(&tmp->d_lock);
 if (!(d_unhashed(tmp) && tmp->d_inode)) {
  dget_locked(tmp);
  __d_drop(tmp);
  spin_unlock(&tmp->d_lock);
  spin_unlock(&dcache_lock);
  simple_unlink(parent->d_inode, tmp);
 } else {
  spin_unlock(&tmp->d_lock);
  spin_unlock(&dcache_lock);
 }

 ret = 0;
bail:




 return ret;
}
