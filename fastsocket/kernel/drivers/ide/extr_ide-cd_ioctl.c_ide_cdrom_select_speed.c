
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct request_sense {int dummy; } ;
struct cdrom_info {int current_speed; } ;
struct cdrom_device_info {int mask; int speed; TYPE_1__* handle; } ;
struct TYPE_5__ {struct cdrom_info* driver_data; } ;
typedef TYPE_1__ ide_drive_t ;


 int ATAPI_CAPABILITIES_PAGE_SIZE ;
 int BLK_MAX_CDB ;
 int CDC_CD_R ;
 int CDC_CD_RW ;
 int CDC_DVD_R ;
 unsigned char GPCMD_SET_SPEED ;
 int ide_cd_queue_pc (TYPE_1__*,unsigned char*,int ,int *,int *,struct request_sense*,int ,int ) ;
 int ide_cdrom_get_capabilities (TYPE_1__*,int *) ;
 int ide_cdrom_update_speed (TYPE_1__*,int *) ;
 int memset (unsigned char*,int ,int) ;

int ide_cdrom_select_speed(struct cdrom_device_info *cdi, int speed)
{
 ide_drive_t *drive = cdi->handle;
 struct cdrom_info *cd = drive->driver_data;
 struct request_sense sense;
 u8 buf[ATAPI_CAPABILITIES_PAGE_SIZE];
 int stat;
 unsigned char cmd[BLK_MAX_CDB];

 if (speed == 0)
  speed = 0xffff;
 else
  speed *= 177;

 memset(cmd, 0, BLK_MAX_CDB);

 cmd[0] = GPCMD_SET_SPEED;

 cmd[2] = (speed >> 8) & 0xff;
 cmd[3] = speed & 0xff;
 if ((cdi->mask & (CDC_CD_R | CDC_CD_RW | CDC_DVD_R)) !=
     (CDC_CD_R | CDC_CD_RW | CDC_DVD_R)) {

  cmd[4] = (speed >> 8) & 0xff;
  cmd[5] = speed & 0xff;
 }

 stat = ide_cd_queue_pc(drive, cmd, 0, ((void*)0), ((void*)0), &sense, 0, 0);

 if (!ide_cdrom_get_capabilities(drive, buf)) {
  ide_cdrom_update_speed(drive, buf);
  cdi->speed = cd->current_speed;
 }

 return 0;
}
