
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_disk {TYPE_1__* device; scalar_t__ capacity; scalar_t__ media_present; } ;
struct TYPE_2__ {int changed; } ;



__attribute__((used)) static void set_media_not_present(struct scsi_disk *sdkp)
{
 sdkp->media_present = 0;
 sdkp->capacity = 0;
 sdkp->device->changed = 1;
}
