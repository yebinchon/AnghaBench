
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct i2c_client {int dummy; } ;


 int i2c_master_send (struct i2c_client*,int*,int) ;

int cx25840_write(struct i2c_client *client, u16 addr, u8 value)
{
 u8 buffer[3];
 buffer[0] = addr >> 8;
 buffer[1] = addr & 0xff;
 buffer[2] = value;
 return i2c_master_send(client, buffer, 3);
}
