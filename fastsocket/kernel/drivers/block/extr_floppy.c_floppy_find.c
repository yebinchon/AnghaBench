
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kobject {int dummy; } ;
typedef int dev_t ;
struct TYPE_2__ {scalar_t__ version; } ;


 int ARRAY_SIZE (int ) ;
 size_t FDC (int) ;
 scalar_t__ FDC_NONE ;
 int N_DRIVE ;
 int allowed_drive_mask ;
 int * disks ;
 TYPE_1__* fdc_state ;
 int floppy_type ;
 struct kobject* get_disk (int ) ;

__attribute__((used)) static struct kobject *floppy_find(dev_t dev, int *part, void *data)
{
 int drive = (*part & 3) | ((*part & 0x80) >> 5);
 if (drive >= N_DRIVE ||
     !(allowed_drive_mask & (1 << drive)) ||
     fdc_state[FDC(drive)].version == FDC_NONE)
  return ((void*)0);
 if (((*part >> 2) & 0x1f) >= ARRAY_SIZE(floppy_type))
  return ((void*)0);
 *part = 0;
 return get_disk(disks[drive]);
}
