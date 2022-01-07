
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pcf50633 {int dummy; } ;


 int PCF50633_GPIO1 ;
 int pcf50633_reg_set_bit_mask (struct pcf50633*,int,int,int) ;
 int* pcf50633_regulator_registers ;

int pcf50633_gpio_power_supply_set(struct pcf50633 *pcf,
     int gpio, int regulator, int on)
{
 u8 reg, val, mask;


 reg = pcf50633_regulator_registers[regulator] + 1;

 val = !!on << (gpio - PCF50633_GPIO1);
 mask = 1 << (gpio - PCF50633_GPIO1);

 return pcf50633_reg_set_bit_mask(pcf, reg, mask, val);
}
