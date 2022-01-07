
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct kobject {int dummy; } ;
struct ata_port {TYPE_3__* dev; } ;
struct ata_device {TYPE_2__* sdev; } ;
struct TYPE_6__ {struct kobject kobj; } ;
struct TYPE_4__ {struct kobject kobj; } ;
struct TYPE_5__ {TYPE_1__ sdev_gendev; } ;


 int KOBJ_CHANGE ;
 int kobject_uevent_env (struct kobject*,int ,char**) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static void ata_acpi_uevent(struct ata_port *ap, struct ata_device *dev,
 u32 event)
{
 struct kobject *kobj = ((void*)0);
 char event_string[20];
 char *envp[] = { event_string, ((void*)0) };

 if (dev) {
  if (dev->sdev)
   kobj = &dev->sdev->sdev_gendev.kobj;
 } else
  kobj = &ap->dev->kobj;

 if (kobj) {
  snprintf(event_string, 20, "BAY_EVENT=%d", event);
  kobject_uevent_env(kobj, KOBJ_CHANGE, envp);
 }
}
