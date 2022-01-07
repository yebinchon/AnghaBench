
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct tveeprom {int model; scalar_t__ has_radio; int tuner_formats; int tuner_type; } ;
struct TYPE_3__ {int type; } ;
struct TYPE_4__ {TYPE_1__ radio; int tuner_type; } ;
struct cx88_core {TYPE_2__ board; int tuner_formats; int i2c_client; } ;



 int CX88_RADIO ;
 int MO_GP0_IO ;
 int cx_set (int ,int) ;
 int info_printk (struct cx88_core*,char*,int) ;
 int tveeprom_hauppauge_analog (int *,struct tveeprom*,int *) ;
 int warn_printk (struct cx88_core*,char*,int) ;

__attribute__((used)) static void hauppauge_eeprom(struct cx88_core *core, u8 *eeprom_data)
{
 struct tveeprom tv;

 tveeprom_hauppauge_analog(&core->i2c_client, &tv, eeprom_data);
 core->board.tuner_type = tv.tuner_type;
 core->tuner_formats = tv.tuner_formats;
 core->board.radio.type = tv.has_radio ? CX88_RADIO : 0;


 switch (tv.model)
 {
 case 14009:
 case 14019:
 case 14029:
 case 14109:
 case 14129:
 case 14559:
 case 14569:
 case 14659:
 case 14669:
 case 28552:
 case 34519:
 case 69009:

 case 69100:
 case 69500:
 case 69559:

 case 69569:
 case 90002:
 case 92001:
 case 92002:
 case 90003:
 case 90500:
 case 90501:
 case 92000:
 case 92900:
 case 94009:
 case 94501:
 case 96009:
 case 96019:
 case 96559:
 case 96569:
 case 96659:
 case 98559:

  break;
 case 128:
  cx_set(MO_GP0_IO, 0x008989FF);
  break;
 default:
  warn_printk(core, "warning: unknown hauppauge model #%d\n",
       tv.model);
  break;
 }

 info_printk(core, "hauppauge eeprom: model=%d\n", tv.model);
}
