
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobj_uevent_env {int dummy; } ;
struct device {int dummy; } ;


 int ENODEV ;

int pci_uevent(struct device *dev, struct kobj_uevent_env *env)
{
 return -ENODEV;
}
