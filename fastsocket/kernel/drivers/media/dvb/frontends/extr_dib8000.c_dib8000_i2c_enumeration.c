
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_device {int addr; struct i2c_adapter* adap; } ;
struct i2c_adapter {int dummy; } ;


 int EINVAL ;
 int dib8000_i2c_write16 (struct i2c_device*,int,int) ;
 scalar_t__ dib8000_identify (struct i2c_device*) ;
 int dprintk (char*,int,...) ;

int dib8000_i2c_enumeration(struct i2c_adapter *host, int no_of_demods, u8 default_addr, u8 first_addr)
{
 int k = 0;
 u8 new_addr = 0;
 struct i2c_device client = {.adap = host };

 for (k = no_of_demods - 1; k >= 0; k--) {

  new_addr = first_addr + (k << 1);

  client.addr = new_addr;
  dib8000_i2c_write16(&client, 1287, 0x0003);
  if (dib8000_identify(&client) == 0) {
   dib8000_i2c_write16(&client, 1287, 0x0003);
   client.addr = default_addr;
   if (dib8000_identify(&client) == 0) {
    dprintk("#%d: not identified", k);
    return -EINVAL;
   }
  }


  dib8000_i2c_write16(&client, 1286, (1 << 10) | (4 << 6));


  dib8000_i2c_write16(&client, 1285, (new_addr << 2) | 0x2);
  client.addr = new_addr;
  dib8000_identify(&client);

  dprintk("IC %d initialized (to i2c_address 0x%x)", k, new_addr);
 }

 for (k = 0; k < no_of_demods; k++) {
  new_addr = first_addr | (k << 1);
  client.addr = new_addr;


  dib8000_i2c_write16(&client, 1285, new_addr << 2);


  dib8000_i2c_write16(&client, 1286, 0);
 }

 return 0;
}
