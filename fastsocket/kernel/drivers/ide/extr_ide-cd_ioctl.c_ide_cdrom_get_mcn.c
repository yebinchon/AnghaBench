
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdrom_mcn {char* medium_catalog_number; } ;
struct cdrom_device_info {int * handle; } ;
typedef int ide_drive_t ;
typedef int buf ;


 int BLK_MAX_CDB ;
 unsigned char GPCMD_READ_SUBCHANNEL ;
 int ide_cd_queue_pc (int *,unsigned char*,int ,char*,unsigned int*,int *,int ,int ) ;
 int memcpy (char*,char*,int) ;
 int memset (unsigned char*,int ,int) ;

int ide_cdrom_get_mcn(struct cdrom_device_info *cdi,
        struct cdrom_mcn *mcn_info)
{
 ide_drive_t *drive = cdi->handle;
 int stat, mcnlen;
 char buf[24];
 unsigned char cmd[BLK_MAX_CDB];
 unsigned len = sizeof(buf);

 memset(cmd, 0, BLK_MAX_CDB);

 cmd[0] = GPCMD_READ_SUBCHANNEL;
 cmd[1] = 2;
 cmd[2] = 0x40;
 cmd[3] = 2;
 cmd[8] = len;

 stat = ide_cd_queue_pc(drive, cmd, 0, buf, &len, ((void*)0), 0, 0);
 if (stat)
  return stat;

 mcnlen = sizeof(mcn_info->medium_catalog_number) - 1;
 memcpy(mcn_info->medium_catalog_number, buf + 9, mcnlen);
 mcn_info->medium_catalog_number[mcnlen] = '\0';

 return 0;
}
