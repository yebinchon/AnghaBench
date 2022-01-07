
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_client {int addr; } ;
struct TYPE_2__ {struct i2c_client* fan; } ;


 int printk (char*,int ) ;
 int read_reg (struct i2c_client*,int,int) ;
 TYPE_1__ x ;

__attribute__((used)) static int
attach_fan( struct i2c_client *cl )
{
 if( x.fan )
  goto out;


 if( read_reg(cl, 0x3d, 1) != 0x30 || read_reg(cl, 0x3e, 1) != 0x41 )
  goto out;
 printk("ADM1030 fan controller [@%02x]\n", cl->addr );

 x.fan = cl;
 out:
 return 0;
}
