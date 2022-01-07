
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ media; int dev_flags; } ;
typedef TYPE_1__ ide_drive_t ;


 int EPERM ;
 int IDE_DFLAG_DSC_OVERLAP ;
 int IDE_DFLAG_NICE1 ;
 int IDE_NICE_1 ;
 int IDE_NICE_DSC_OVERLAP ;
 scalar_t__ ide_tape ;

__attribute__((used)) static int ide_set_nice_ioctl(ide_drive_t *drive, unsigned long arg)
{
 if (arg != (arg & ((1 << IDE_NICE_DSC_OVERLAP) | (1 << IDE_NICE_1))))
  return -EPERM;

 if (((arg >> IDE_NICE_DSC_OVERLAP) & 1) &&
     (drive->media != ide_tape))
  return -EPERM;

 if ((arg >> IDE_NICE_DSC_OVERLAP) & 1)
  drive->dev_flags |= IDE_DFLAG_DSC_OVERLAP;
 else
  drive->dev_flags &= ~IDE_DFLAG_DSC_OVERLAP;

 if ((arg >> IDE_NICE_1) & 1)
  drive->dev_flags |= IDE_DFLAG_NICE1;
 else
  drive->dev_flags &= ~IDE_DFLAG_NICE1;

 return 0;
}
