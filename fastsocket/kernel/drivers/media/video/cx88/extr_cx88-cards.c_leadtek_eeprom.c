
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int tuner_type; } ;
struct cx88_core {TYPE_1__ board; } ;


 int TUNER_PHILIPS_FM1216ME_MK3 ;
 int TUNER_PHILIPS_FM1236_MK3 ;
 int info_printk (struct cx88_core*,char*,int ,int) ;
 int warn_printk (struct cx88_core*,char*) ;

__attribute__((used)) static void leadtek_eeprom(struct cx88_core *core, u8 *eeprom_data)
{
 if (eeprom_data[4] != 0x7d ||
     eeprom_data[5] != 0x10 ||
     eeprom_data[7] != 0x66) {
  warn_printk(core, "Leadtek eeprom invalid.\n");
  return;
 }


 switch (eeprom_data[6]) {
 case 0x13:
 case 0x21:
 case 0x31:
 case 0x37:
 case 0x3d:
  core->board.tuner_type = TUNER_PHILIPS_FM1236_MK3;
  break;
 default:
  core->board.tuner_type = TUNER_PHILIPS_FM1216ME_MK3;
  break;
 }

 info_printk(core, "Leadtek Winfast 2000XP Expert config: "
      "tuner=%d, eeprom[0]=0x%02x\n",
      core->board.tuner_type, eeprom_data[0]);
}
