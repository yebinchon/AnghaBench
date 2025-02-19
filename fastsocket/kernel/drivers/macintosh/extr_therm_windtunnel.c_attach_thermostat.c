
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_client {int addr; } ;
struct TYPE_2__ {int temp; int overheat_temp; int overheat_hyst; struct i2c_client* thermostat; } ;


 int print_temp (char*,int) ;
 int printk (char*,...) ;
 int read_reg (struct i2c_client*,int,int) ;
 TYPE_1__ x ;

__attribute__((used)) static int
attach_thermostat( struct i2c_client *cl )
{
 int hyst_temp, os_temp, temp;

 if( x.thermostat )
  goto out;

 if( (temp=read_reg(cl, 0, 2)) < 0 )
  goto out;


 if( temp < 0x1600 || temp > 0x3c00 )
  goto out;
 hyst_temp = read_reg(cl, 2, 2);
 os_temp = read_reg(cl, 3, 2);
 if( hyst_temp < 0 || os_temp < 0 )
  goto out;

 printk("DS1775 digital thermometer [@%02x]\n", cl->addr );
 print_temp("Temp: ", temp );
 print_temp("  Hyst: ", hyst_temp );
 print_temp("  OS: ", os_temp );
 printk("\n");

 x.temp = temp;
 x.overheat_temp = os_temp;
 x.overheat_hyst = hyst_temp;
 x.thermostat = cl;
out:
 return 0;
}
