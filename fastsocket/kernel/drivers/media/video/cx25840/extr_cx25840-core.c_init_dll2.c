
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int cx25840_write (struct i2c_client*,int,int) ;
 int udelay (int) ;

__attribute__((used)) static void init_dll2(struct i2c_client *client)
{


 cx25840_write(client, 0x15d, 0xe3);
 cx25840_write(client, 0x15e, 0x86);
 cx25840_write(client, 0x15f, 0x06);
 udelay(10);
 cx25840_write(client, 0x15d, 0xe1);
 cx25840_write(client, 0x15d, 0xe0);
 cx25840_write(client, 0x15d, 0xe1);
}
