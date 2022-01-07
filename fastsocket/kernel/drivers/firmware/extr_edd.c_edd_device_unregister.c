
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edd_device {int kobj; } ;


 int kobject_put (int *) ;

__attribute__((used)) static inline void
edd_device_unregister(struct edd_device *edev)
{
 kobject_put(&edev->kobj);
}
