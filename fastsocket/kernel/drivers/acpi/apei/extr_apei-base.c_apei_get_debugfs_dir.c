
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 struct dentry* debugfs_create_dir (char*,int *) ;

struct dentry *apei_get_debugfs_dir(void)
{
 static struct dentry *dapei;

 if (!dapei)
  dapei = debugfs_create_dir("apei", ((void*)0));

 return dapei;
}
