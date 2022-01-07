
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ibmvfc_event {TYPE_1__* cmnd; } ;
struct TYPE_2__ {int device; } ;


 void* scsi_target (int ) ;

__attribute__((used)) static int ibmvfc_match_target(struct ibmvfc_event *evt, void *device)
{
 if (evt->cmnd && scsi_target(evt->cmnd->device) == device)
  return 1;
 return 0;
}
