
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct tveeprom {int dummy; } ;
struct TYPE_3__ {int addr; } ;
struct ivtv {TYPE_1__ i2c_client; } ;
typedef int eedata ;


 int tveeprom_hauppauge_analog (TYPE_1__*,struct tveeprom*,int *) ;
 int tveeprom_read (TYPE_1__*,int *,int) ;

void ivtv_read_eeprom(struct ivtv *itv, struct tveeprom *tv)
{
 u8 eedata[256];

 itv->i2c_client.addr = 0xA0 >> 1;
 tveeprom_read(&itv->i2c_client, eedata, sizeof(eedata));
 tveeprom_hauppauge_analog(&itv->i2c_client, tv, eedata);
}
