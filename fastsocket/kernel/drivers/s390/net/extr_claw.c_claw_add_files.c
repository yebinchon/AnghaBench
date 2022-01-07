
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int kobj; } ;


 int CLAW_DBF_TEXT (int,int ,char*) ;
 int claw_attr_group ;
 int setup ;
 int sysfs_create_group (int *,int *) ;

__attribute__((used)) static int
claw_add_files(struct device *dev)
{
 CLAW_DBF_TEXT(2, setup, "add_file");
 return sysfs_create_group(&dev->kobj, &claw_attr_group);
}
