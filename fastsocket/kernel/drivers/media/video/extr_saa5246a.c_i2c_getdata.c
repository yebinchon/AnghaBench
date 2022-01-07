
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct saa5246a_device {int sd; } ;
struct i2c_client {int dummy; } ;


 int i2c_master_recv (struct i2c_client*,int *,int) ;
 struct i2c_client* v4l2_get_subdevdata (int *) ;

__attribute__((used)) static int i2c_getdata(struct saa5246a_device *t, int count, u8 *buf)
{
 struct i2c_client *client = v4l2_get_subdevdata(&t->sd);

 if (i2c_master_recv(client, buf, count) != count)
  return -1;
 return 0;
}
