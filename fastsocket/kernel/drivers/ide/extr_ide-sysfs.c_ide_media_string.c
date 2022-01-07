
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int media; } ;
typedef TYPE_1__ ide_drive_t ;
char *ide_media_string(ide_drive_t *drive)
{
 switch (drive->media) {
 case 131:
  return "disk";
 case 132:
  return "cdrom";
 case 128:
  return "tape";
 case 130:
  return "floppy";
 case 129:
  return "optical";
 default:
  return "UNKNOWN";
 }
}
