
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct request_sense {int dummy; } ;
struct cdrom_device_info {int sanyo_slot; } ;
struct cdrom_info {struct cdrom_device_info devinfo; } ;
struct TYPE_4__ {struct cdrom_info* driver_data; } ;
typedef TYPE_1__ ide_drive_t ;


 int BLK_MAX_CDB ;
 unsigned char GPCMD_TEST_UNIT_READY ;
 int IDE_DBG_FUNC ;
 int REQ_QUIET ;
 int ide_cd_queue_pc (TYPE_1__*,unsigned char*,int ,int *,int *,struct request_sense*,int ,int ) ;
 int ide_debug_log (int ,char*) ;
 int memset (unsigned char*,int ,int) ;

int cdrom_check_status(ide_drive_t *drive, struct request_sense *sense)
{
 struct cdrom_info *info = drive->driver_data;
 struct cdrom_device_info *cdi = &info->devinfo;
 unsigned char cmd[BLK_MAX_CDB];

 ide_debug_log(IDE_DBG_FUNC, "enter");

 memset(cmd, 0, BLK_MAX_CDB);
 cmd[0] = GPCMD_TEST_UNIT_READY;





 cmd[7] = cdi->sanyo_slot % 3;

 return ide_cd_queue_pc(drive, cmd, 0, ((void*)0), ((void*)0), sense, 0, REQ_QUIET);
}
