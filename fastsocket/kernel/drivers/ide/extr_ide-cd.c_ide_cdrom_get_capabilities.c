
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct packet_command {int dummy; } ;
struct cdrom_device_info {int dummy; } ;
struct cdrom_info {struct cdrom_device_info devinfo; } ;
struct TYPE_3__ {int atapi_flags; struct cdrom_info* driver_data; } ;
typedef TYPE_1__ ide_drive_t ;


 scalar_t__ ATAPI_CAPABILITIES_PAGE_PAD_SIZE ;
 int ATAPI_CAPABILITIES_PAGE_SIZE ;
 int CGC_DATA_UNKNOWN ;
 int GPMODE_CAPABILITIES_PAGE ;
 int IDE_AFLAG_FULL_CAPS_PAGE ;
 int IDE_DBG_FUNC ;
 int cdrom_mode_sense (struct cdrom_device_info*,struct packet_command*,int ,int ) ;
 int ide_debug_log (int ,char*) ;
 int init_cdrom_command (struct packet_command*,int *,int,int ) ;

int ide_cdrom_get_capabilities(ide_drive_t *drive, u8 *buf)
{
 struct cdrom_info *info = drive->driver_data;
 struct cdrom_device_info *cdi = &info->devinfo;
 struct packet_command cgc;
 int stat, attempts = 3, size = ATAPI_CAPABILITIES_PAGE_SIZE;

 ide_debug_log(IDE_DBG_FUNC, "enter");

 if ((drive->atapi_flags & IDE_AFLAG_FULL_CAPS_PAGE) == 0)
  size -= ATAPI_CAPABILITIES_PAGE_PAD_SIZE;

 init_cdrom_command(&cgc, buf, size, CGC_DATA_UNKNOWN);
 do {

  stat = cdrom_mode_sense(cdi, &cgc, GPMODE_CAPABILITIES_PAGE, 0);
  if (!stat)
   break;
 } while (--attempts);
 return stat;
}
