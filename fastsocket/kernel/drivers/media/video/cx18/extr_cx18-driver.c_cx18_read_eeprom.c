
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct tveeprom {int addr; int model; int * adapter; int name; } ;
struct i2c_client {int addr; int model; int * adapter; int name; } ;
struct cx18 {TYPE_1__* card; int * i2c_adap; } ;
typedef int eedata ;
typedef int c ;
struct TYPE_2__ {int type; } ;







 int CX18_INFO (char*,int ,int ,int ,int ) ;
 int cx18_eeprom_dump (struct cx18*,int *,int) ;
 int memset (struct tveeprom*,int ,int) ;
 int strlcpy (int ,char*,int) ;
 int tveeprom_hauppauge_analog (struct tveeprom*,struct tveeprom*,int *) ;
 scalar_t__ tveeprom_read (struct tveeprom*,int *,int) ;

void cx18_read_eeprom(struct cx18 *cx, struct tveeprom *tv)
{
 struct i2c_client c;
 u8 eedata[256];

 memset(&c, 0, sizeof(c));
 strlcpy(c.name, "cx18 tveeprom tmp", sizeof(c.name));
 c.adapter = &cx->i2c_adap[0];
 c.addr = 0xA0 >> 1;

 memset(tv, 0, sizeof(*tv));
 if (tveeprom_read(&c, eedata, sizeof(eedata)))
  return;

 switch (cx->card->type) {
 case 131:
 case 129:
 case 130:
  tveeprom_hauppauge_analog(&c, tv, eedata);
  break;
 case 128:
 case 132:
  tv->model = 0x718;
  cx18_eeprom_dump(cx, eedata, sizeof(eedata));
  CX18_INFO("eeprom PCI ID: %02x%02x:%02x%02x\n",
     eedata[2], eedata[1], eedata[4], eedata[3]);
  break;
 default:
  tv->model = 0xffffffff;
  cx18_eeprom_dump(cx, eedata, sizeof(eedata));
  break;
 }
}
