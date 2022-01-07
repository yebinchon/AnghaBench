
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_device {int model; int vendor; } ;
struct TYPE_2__ {scalar_t__ model; scalar_t__ vendor; } ;


 TYPE_1__* clariion_dev_list ;
 scalar_t__ scsi_device_tpgs (struct scsi_device*) ;
 int strlen (scalar_t__) ;
 int strncmp (int ,scalar_t__,int ) ;

__attribute__((used)) static bool clariion_match(struct scsi_device *sdev)
{
 int i;

 if (scsi_device_tpgs(sdev))
  return 0;

 for (i = 0; clariion_dev_list[i].vendor; i++) {
  if (!strncmp(sdev->vendor, clariion_dev_list[i].vendor,
   strlen(clariion_dev_list[i].vendor)) &&
      !strncmp(sdev->model, clariion_dev_list[i].model,
   strlen(clariion_dev_list[i].model))) {
   return 1;
  }
 }
 return 0;
}
