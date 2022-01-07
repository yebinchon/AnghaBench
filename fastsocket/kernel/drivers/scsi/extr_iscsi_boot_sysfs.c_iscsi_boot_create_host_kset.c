
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_boot_kset {int dummy; } ;


 int GFP_KERNEL ;
 struct iscsi_boot_kset* iscsi_boot_create_kset (char*) ;
 char* kasprintf (int ,char*,unsigned int) ;
 int kfree (char*) ;

struct iscsi_boot_kset *iscsi_boot_create_host_kset(unsigned int hostno)
{
 struct iscsi_boot_kset *boot_kset;
 char *set_name;

 set_name = kasprintf(GFP_KERNEL, "iscsi_boot%u", hostno);
 if (!set_name)
  return ((void*)0);

 boot_kset = iscsi_boot_create_kset(set_name);
 kfree(set_name);
 return boot_kset;
}
