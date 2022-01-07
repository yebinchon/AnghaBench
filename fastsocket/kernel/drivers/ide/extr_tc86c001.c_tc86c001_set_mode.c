
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_4__ {int config_data; } ;
typedef TYPE_1__ ide_hwif_t ;
struct TYPE_5__ {scalar_t__ dn; TYPE_1__* hwif; } ;
typedef TYPE_2__ ide_drive_t ;
 int inw (unsigned long) ;
 int outw (int,unsigned long) ;

__attribute__((used)) static void tc86c001_set_mode(ide_drive_t *drive, const u8 speed)
{
 ide_hwif_t *hwif = drive->hwif;
 unsigned long scr_port = hwif->config_data + (drive->dn ? 0x02 : 0x00);
 u16 mode, scr = inw(scr_port);

 switch (speed) {
 case 128: mode = 0x00c0; break;
 case 129: mode = 0x00b0; break;
 case 130: mode = 0x00a0; break;
 case 131: mode = 0x0090; break;
 case 132: mode = 0x0080; break;
 case 138: mode = 0x0070; break;
 case 139: mode = 0x0060; break;
 case 140: mode = 0x0050; break;
 case 133: mode = 0x0400; break;
 case 134: mode = 0x0300; break;
 case 135: mode = 0x0200; break;
 case 136: mode = 0x0100; break;
 case 137:
 default: mode = 0x0000; break;
 }

 scr &= (speed < 140) ? 0xf8ff : 0xff0f;
 scr |= mode;
 outw(scr, scr_port);
}
