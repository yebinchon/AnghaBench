
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dummy; } ;


 int EINVAL ;
 int ENODEV ;
 int i2c_master_send (struct i2c_client*,int*,int) ;

__attribute__((used)) static int
write_reg( struct i2c_client *cl, int reg, int data, int len )
{
 u8 tmp[3];

 if( len < 1 || len > 2 || data < 0 )
  return -EINVAL;

 tmp[0] = reg;
 tmp[1] = (len == 1) ? data : (data >> 8);
 tmp[2] = data;
 len++;

 if( i2c_master_send(cl, tmp, len) != len )
  return -ENODEV;
 return 0;
}
