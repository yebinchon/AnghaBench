
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct work_struct {int dummy; } ;
struct device_node {int dummy; } ;
struct TYPE_4__ {TYPE_1__* of_dev; int of_node; } ;
struct TYPE_3__ {int dev; } ;


 scalar_t__ of_device_is_compatible (struct device_node*,char*) ;
 struct device_node* of_get_next_child (int ,struct device_node*) ;
 int of_platform_device_create (struct device_node*,char*,int *) ;
 TYPE_2__* smu ;

__attribute__((used)) static void smu_expose_childs(struct work_struct *unused)
{
 struct device_node *np;

 for (np = ((void*)0); (np = of_get_next_child(smu->of_node, np)) != ((void*)0);)
  if (of_device_is_compatible(np, "smu-sensors"))
   of_platform_device_create(np, "smu-sensors",
        &smu->of_dev->dev);
}
