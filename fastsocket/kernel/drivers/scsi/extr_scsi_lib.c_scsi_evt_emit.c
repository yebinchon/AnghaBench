
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_event {int evt_type; } ;
struct TYPE_2__ {int kobj; } ;
struct scsi_device {TYPE_1__ sdev_gendev; } ;


 int KOBJ_CHANGE ;

 int kobject_uevent_env (int *,int ,char**) ;

__attribute__((used)) static void scsi_evt_emit(struct scsi_device *sdev, struct scsi_event *evt)
{
 int idx = 0;
 char *envp[3];

 switch (evt->evt_type) {
 case 128:
  envp[idx++] = "SDEV_MEDIA_CHANGE=1";
  break;

 default:

  break;
 }

 envp[idx++] = ((void*)0);

 kobject_uevent_env(&sdev->sdev_gendev.kobj, KOBJ_CHANGE, envp);
}
