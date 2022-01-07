
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_device {int sdev_gendev; TYPE_1__* host; } ;
struct enclosure_device {int edev; } ;
struct TYPE_2__ {int shost_gendev; } ;


 struct enclosure_device* enclosure_find (int *,struct enclosure_device*) ;
 int enclosure_remove_device (struct enclosure_device*,int *) ;
 int put_device (int *) ;

__attribute__((used)) static void ses_intf_remove_component(struct scsi_device *sdev)
{
 struct enclosure_device *edev, *prev = ((void*)0);

 while ((edev = enclosure_find(&sdev->host->shost_gendev, prev)) != ((void*)0)) {
  prev = edev;
  if (!enclosure_remove_device(edev, &sdev->sdev_gendev))
   break;
 }
 if (edev)
  put_device(&edev->edev);
}
