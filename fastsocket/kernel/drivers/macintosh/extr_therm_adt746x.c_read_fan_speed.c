
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct thermostat {int dummy; } ;


 int read_reg (struct thermostat*,int) ;

__attribute__((used)) static int read_fan_speed(struct thermostat *th, u8 addr)
{
 u8 tmp[2];
 u16 res;


 tmp[1] = read_reg(th, addr);
 tmp[0] = read_reg(th, addr + 1);

 res = tmp[1] + (tmp[0] << 8);

 return (res == 0xffff ? 0 : (90000*60)/res);
}
