
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sector_t ;
struct TYPE_3__ {int capacity64; } ;
typedef TYPE_1__ ide_drive_t ;



sector_t ide_gd_capacity(ide_drive_t *drive)
{
 return drive->capacity64;
}
