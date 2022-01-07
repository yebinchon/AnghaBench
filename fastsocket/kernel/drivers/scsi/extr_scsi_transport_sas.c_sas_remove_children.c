
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int device_for_each_child (struct device*,void*,int ) ;
 int do_sas_phy_delete ;

void sas_remove_children(struct device *dev)
{
 device_for_each_child(dev, (void *)0, do_sas_phy_delete);
 device_for_each_child(dev, (void *)1, do_sas_phy_delete);
}
