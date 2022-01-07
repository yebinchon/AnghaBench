
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int SG2_SD_POWER_ENABLE ;
 int gpio_set_value (int ,int) ;

__attribute__((used)) static void stargate2_mci_setpower(struct device *dev, unsigned int vdd)
{
 gpio_set_value(SG2_SD_POWER_ENABLE, !!vdd);
}
