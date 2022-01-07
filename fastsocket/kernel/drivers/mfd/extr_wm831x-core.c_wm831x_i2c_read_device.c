
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wm831x {struct i2c_client* control_data; } ;
struct i2c_client {int dummy; } ;


 int EIO ;
 int cpu_to_be16 (unsigned short) ;
 int i2c_master_recv (struct i2c_client*,void*,int) ;
 int i2c_master_send (struct i2c_client*,unsigned char*,int) ;

__attribute__((used)) static int wm831x_i2c_read_device(struct wm831x *wm831x, unsigned short reg,
      int bytes, void *dest)
{
 struct i2c_client *i2c = wm831x->control_data;
 int ret;
 u16 r = cpu_to_be16(reg);

 ret = i2c_master_send(i2c, (unsigned char *)&r, 2);
 if (ret < 0)
  return ret;
 if (ret != 2)
  return -EIO;

 ret = i2c_master_recv(i2c, dest, bytes);
 if (ret < 0)
  return ret;
 if (ret != bytes)
  return -EIO;
 return 0;
}
