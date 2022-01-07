
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ media; } ;
typedef TYPE_1__ ide_drive_t ;


 scalar_t__ ide_cdrom ;
 scalar_t__ ide_optical ;

__attribute__((used)) static inline int dev_is_idecd(ide_drive_t *drive)
{
 return drive->media == ide_cdrom || drive->media == ide_optical;
}
