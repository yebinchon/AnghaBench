
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;


 int ppi_attr_grp ;
 int sysfs_remove_group (struct kobject*,int *) ;

void tpm_remove_ppi(struct kobject *parent)
{
 sysfs_remove_group(parent, &ppi_attr_grp);
}
