
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kobject {int dummy; } ;
struct TYPE_2__ {struct kobject kobj; } ;


 int BUG_ON (int ) ;
 TYPE_1__ ttm_drm_class_device ;

struct kobject *ttm_get_kobj(void)
{
 struct kobject *kobj = &ttm_drm_class_device.kobj;
 BUG_ON(kobj == ((void*)0));
 return kobj;
}
