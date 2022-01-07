
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netup_card_info {TYPE_1__* port; void* rev; } ;
struct i2c_adapter {int dummy; } ;
struct TYPE_2__ {void** mac; } ;


 void* netup_eeprom_read (struct i2c_adapter*,int) ;

void netup_get_card_info(struct i2c_adapter *i2c_adap,
    struct netup_card_info *cinfo)
{
 int i, j;

 cinfo->rev = netup_eeprom_read(i2c_adap, 63);

 for (i = 64, j = 0; i < 70; i++, j++)
  cinfo->port[0].mac[j] = netup_eeprom_read(i2c_adap, i);

 for (i = 70, j = 0; i < 76; i++, j++)
  cinfo->port[1].mac[j] = netup_eeprom_read(i2c_adap, i);
}
