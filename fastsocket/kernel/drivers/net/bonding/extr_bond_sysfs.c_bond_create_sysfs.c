
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int name; } ;
struct TYPE_5__ {TYPE_1__ attr; } ;


 int EEXIST ;
 scalar_t__ __dev_get_by_name (int *,int ) ;
 TYPE_2__ class_attr_bonding_masters ;
 int init_net ;
 int netdev_class_create_file (TYPE_2__*) ;
 int pr_err (char*,int ) ;

int bond_create_sysfs(void)
{
 int ret;

 ret = netdev_class_create_file(&class_attr_bonding_masters);
 if (ret == -EEXIST) {

  if (__dev_get_by_name(&init_net,
          class_attr_bonding_masters.attr.name))
   pr_err("network device named %s already "
          "exists in sysfs",
          class_attr_bonding_masters.attr.name);
  ret = 0;
 }

 return ret;

}
