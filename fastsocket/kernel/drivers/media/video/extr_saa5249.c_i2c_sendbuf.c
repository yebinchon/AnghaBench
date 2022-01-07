
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct saa5249_device {int sd; } ;
struct i2c_client {int dummy; } ;


 int i2c_master_send (struct i2c_client*,char*,int) ;
 int memcpy (char*,int *,int) ;
 struct i2c_client* v4l2_get_subdevdata (int *) ;

__attribute__((used)) static int i2c_sendbuf(struct saa5249_device *t, int reg, int count, u8 *data)
{
 struct i2c_client *client = v4l2_get_subdevdata(&t->sd);
 char buf[64];

 buf[0] = reg;
 memcpy(buf+1, data, count);

 if (i2c_master_send(client, buf, count + 1) == count + 1)
  return 0;
 return -1;
}
