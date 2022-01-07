
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_device {TYPE_2__* primary; } ;
struct TYPE_3__ {int kobj; } ;
struct TYPE_4__ {TYPE_1__ kdev; } ;


 int DRM_DEBUG (char*) ;
 int KOBJ_CHANGE ;
 int kobject_uevent_env (int *,int ,char**) ;

void drm_sysfs_hotplug_event(struct drm_device *dev)
{
 char *event_string = "HOTPLUG=1";
 char *envp[] = { event_string, ((void*)0) };

 DRM_DEBUG("generating hotplug event\n");

 kobject_uevent_env(&dev->primary->kdev.kobj, KOBJ_CHANGE, envp);
}
