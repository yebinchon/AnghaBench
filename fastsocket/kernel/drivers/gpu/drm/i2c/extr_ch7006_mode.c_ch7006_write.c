
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct i2c_client {int dummy; } ;


 int ARRAY_SIZE (int *) ;
 int ch7006_err (struct i2c_client*,char*,int,int ) ;
 int i2c_master_send (struct i2c_client*,int *,int ) ;

void ch7006_write(struct i2c_client *client, uint8_t addr, uint8_t val)
{
 uint8_t buf[] = {addr, val};
 int ret;

 ret = i2c_master_send(client, buf, ARRAY_SIZE(buf));
 if (ret < 0)
  ch7006_err(client, "Error %d writing to subaddress 0x%x\n",
      ret, addr);
}
