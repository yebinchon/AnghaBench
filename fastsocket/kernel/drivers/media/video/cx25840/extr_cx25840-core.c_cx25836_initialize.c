
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int cx25840_and_or (struct i2c_client*,int,int,int) ;
 int udelay (int) ;

__attribute__((used)) static void cx25836_initialize(struct i2c_client *client)
{


 cx25840_and_or(client, 0x000, ~0x01, 0x01);
 cx25840_and_or(client, 0x000, ~0x01, 0x00);

 cx25840_and_or(client, 0x15a, ~0x70, 0x00);

 cx25840_and_or(client, 0x15b, ~0x1e, 0x06);

 cx25840_and_or(client, 0x159, ~0x02, 0x02);

 udelay(10);

 cx25840_and_or(client, 0x159, ~0x02, 0x00);

 cx25840_and_or(client, 0x159, ~0xc0, 0xc0);

 cx25840_and_or(client, 0x159, ~0x01, 0x00);
 cx25840_and_or(client, 0x159, ~0x01, 0x01);

 cx25840_and_or(client, 0x15b, ~0x1e, 0x10);
}
