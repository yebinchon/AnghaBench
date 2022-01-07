
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 scalar_t__ IS_ERR (struct dentry*) ;
 struct dentry* debugfs_create_dir (char const*,struct dentry*) ;

__attribute__((used)) static struct dentry *dasd_debugfs_setup(const char *name,
      struct dentry *base_dentry)
{
 struct dentry *pde;

 if (!base_dentry)
  return ((void*)0);
 pde = debugfs_create_dir(name, base_dentry);
 if (!pde || IS_ERR(pde))
  return ((void*)0);
 return pde;
}
