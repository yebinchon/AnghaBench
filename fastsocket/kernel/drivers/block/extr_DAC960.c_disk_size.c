
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_4__** LogicalDeviceInformation; } ;
struct TYPE_8__ {TYPE_1__* LogicalDriveInformation; } ;
struct TYPE_11__ {scalar_t__ FirmwareType; int LogicalDriveCount; TYPE_3__ V2; TYPE_2__ V1; } ;
struct TYPE_10__ {long ConfigurableDeviceSize; } ;
struct TYPE_7__ {long LogicalDriveSize; } ;
typedef TYPE_4__ DAC960_V2_LogicalDeviceInfo_T ;
typedef TYPE_5__ DAC960_Controller_T ;


 scalar_t__ DAC960_V1_Controller ;

__attribute__((used)) static long disk_size(DAC960_Controller_T *p, int drive_nr)
{
 if (p->FirmwareType == DAC960_V1_Controller) {
  if (drive_nr >= p->LogicalDriveCount)
   return 0;
  return p->V1.LogicalDriveInformation[drive_nr].
   LogicalDriveSize;
 } else {
  DAC960_V2_LogicalDeviceInfo_T *i =
   p->V2.LogicalDeviceInformation[drive_nr];
  if (i == ((void*)0))
   return 0;
  return i->ConfigurableDeviceSize;
 }
}
