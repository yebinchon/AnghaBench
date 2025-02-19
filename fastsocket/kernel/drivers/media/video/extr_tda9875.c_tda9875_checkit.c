
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int i2c_read_register (struct i2c_client*,int,int) ;
 int v4l_info (struct i2c_client*,char*,...) ;

__attribute__((used)) static int tda9875_checkit(struct i2c_client *client, int addr)
{
 int dic, rev;

 dic = i2c_read_register(client, addr, 254);
 rev = i2c_read_register(client, addr, 255);

 if (dic == 0 || dic == 2) {
  v4l_info(client, "tda9875%s rev. %d detected at 0x%02x\n",
   dic == 0 ? "" : "A", rev, addr << 1);
  return 1;
 }
 v4l_info(client, "no such chip at 0x%02x (dic=0x%x rev=0x%x)\n",
   addr << 1, dic, rev);
 return 0;
}
