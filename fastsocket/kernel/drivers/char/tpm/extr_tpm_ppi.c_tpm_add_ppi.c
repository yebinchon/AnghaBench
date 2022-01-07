
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;


 int ppi_attr_grp ;
 int sysfs_create_group (struct kobject*,int *) ;

int tpm_add_ppi(struct kobject *parent)
{
 return sysfs_create_group(parent, &ppi_attr_grp);
}
