
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int s_root; } ;
struct qib_devdata {int unit; int num_pports; int flags; } ;
struct dentry {TYPE_1__* d_inode; } ;
struct TYPE_2__ {int i_mutex; } ;


 scalar_t__ IS_ERR (struct dentry*) ;
 int PTR_ERR (struct dentry*) ;
 int QIB_HAS_QSFP ;
 int d_delete (struct dentry*) ;
 struct dentry* dget (int ) ;
 int dput (struct dentry*) ;
 struct dentry* lookup_one_len (char*,struct dentry*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*,char*) ;
 int remove_file (struct dentry*,char*) ;
 int simple_rmdir (TYPE_1__*,struct dentry*) ;
 int snprintf (char*,int,char*,int) ;
 int sprintf (char*,char*,int) ;
 int strlen (char*) ;

__attribute__((used)) static int remove_device_files(struct super_block *sb,
          struct qib_devdata *dd)
{
 struct dentry *dir, *root;
 char unit[10];
 int ret, i;

 root = dget(sb->s_root);
 mutex_lock(&root->d_inode->i_mutex);
 snprintf(unit, sizeof unit, "%u", dd->unit);
 dir = lookup_one_len(unit, root, strlen(unit));

 if (IS_ERR(dir)) {
  ret = PTR_ERR(dir);
  pr_err("Lookup of %s failed\n", unit);
  goto bail;
 }

 remove_file(dir, "counters");
 remove_file(dir, "counter_names");
 remove_file(dir, "portcounter_names");
 for (i = 0; i < dd->num_pports; i++) {
  char fname[24];

  sprintf(fname, "port%dcounters", i + 1);
  remove_file(dir, fname);
  if (dd->flags & QIB_HAS_QSFP) {
   sprintf(fname, "qsfp%d", i + 1);
   remove_file(dir, fname);
  }
 }
 remove_file(dir, "flash");
 d_delete(dir);
 ret = simple_rmdir(root->d_inode, dir);

bail:
 mutex_unlock(&root->d_inode->i_mutex);
 dput(root);
 return ret;
}
