
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dummy; } ;


 int ENOSYS ;
 int i2c_master_send (struct i2c_client*,int const*,int) ;
 int v4l_err (struct i2c_client*,char*) ;

__attribute__((used)) static int fw_write(struct i2c_client *client, const u8 *data, int size)
{
 if (i2c_master_send(client, data, size) < size) {
  v4l_err(client, "firmware load i2c failure\n");
  return -ENOSYS;
 }

 return 0;
}
