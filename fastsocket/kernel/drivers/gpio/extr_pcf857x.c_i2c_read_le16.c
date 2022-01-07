
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dummy; } ;


 int i2c_master_recv (struct i2c_client*,int*,int) ;

__attribute__((used)) static int i2c_read_le16(struct i2c_client *client)
{
 u8 buf[2];
 int status;

 status = i2c_master_recv(client, buf, 2);
 if (status < 0)
  return status;
 return (buf[1] << 8) | buf[0];
}
