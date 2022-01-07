
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 int securityfs_remove (struct dentry*) ;

void tpm_bios_log_teardown(struct dentry **lst)
{
 int i;

 for (i = 0; i < 3; i++)
  securityfs_remove(lst[i]);
}
