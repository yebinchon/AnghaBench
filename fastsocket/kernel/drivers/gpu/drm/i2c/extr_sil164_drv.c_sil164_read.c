
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
typedef int uint8_t ;
struct i2c_client {int dummy; } ;
typedef int addr ;


 int i2c_master_recv (struct i2c_client*,int *,int) ;
 int i2c_master_send (struct i2c_client*,int *,int) ;
 int sil164_err (struct i2c_client*,char*,int,int ) ;

__attribute__((used)) static uint8_t
sil164_read(struct i2c_client *client, uint8_t addr)
{
 uint8_t val;
 int ret;

 ret = i2c_master_send(client, &addr, sizeof(addr));
 if (ret < 0)
  goto fail;

 ret = i2c_master_recv(client, &val, sizeof(val));
 if (ret < 0)
  goto fail;

 return val;

fail:
 sil164_err(client, "Error %d reading from subaddress 0x%x\n",
     ret, addr);
 return 0;
}
