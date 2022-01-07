
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermostat {int * temps; } ;


 int * TEMP_REG ;
 int read_reg (struct thermostat*,int ) ;

__attribute__((used)) static void read_sensors(struct thermostat *th)
{
 int i = 0;

 for (i = 0; i < 3; i++)
  th->temps[i] = read_reg(th, TEMP_REG[i]);
}
