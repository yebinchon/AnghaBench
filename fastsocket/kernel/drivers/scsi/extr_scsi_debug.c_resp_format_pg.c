
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int format_pg ;


 scalar_t__ DEV_REMOVEABLE (int) ;
 int memcpy (unsigned char*,unsigned char*,int) ;
 int memset (unsigned char*,int ,int) ;
 int scsi_debug_sector_size ;
 int sdebug_sectors_per ;

__attribute__((used)) static int resp_format_pg(unsigned char * p, int pcontrol, int target)
{
 unsigned char format_pg[] = {0x3, 0x16, 0, 0, 0, 0, 0, 0,
         0, 0, 0, 0, 0, 0, 0, 0,
         0, 0, 0, 0, 0x40, 0, 0, 0};

 memcpy(p, format_pg, sizeof(format_pg));
 p[10] = (sdebug_sectors_per >> 8) & 0xff;
 p[11] = sdebug_sectors_per & 0xff;
 p[12] = (scsi_debug_sector_size >> 8) & 0xff;
 p[13] = scsi_debug_sector_size & 0xff;
 if (DEV_REMOVEABLE(target))
  p[20] |= 0x20;
 if (1 == pcontrol)
  memset(p + 2, 0, sizeof(format_pg) - 2);
 return sizeof(format_pg);
}
