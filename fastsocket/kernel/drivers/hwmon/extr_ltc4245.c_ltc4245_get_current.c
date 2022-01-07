
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ltc4245_data {int* vregs; } ;
struct device {int dummy; } ;






 int WARN_ON_ONCE (int) ;
 struct ltc4245_data* ltc4245_update_device (struct device*) ;

__attribute__((used)) static unsigned int ltc4245_get_current(struct device *dev, u8 reg)
{
 struct ltc4245_data *data = ltc4245_update_device(dev);
 const u8 regval = data->vregs[reg - 0x10];
 unsigned int voltage;
 unsigned int curr;
 switch (reg) {
 case 131:
  voltage = regval * 250;
  curr = voltage / 50;
  break;
 case 129:
  voltage = regval * 125;
  curr = (voltage * 10) / 35;
  break;
 case 130:
  voltage = regval * 125;
  curr = (voltage * 10) / 25;
  break;
 case 128:
  voltage = regval * 250;
  curr = voltage / 100;
  break;
 default:

  WARN_ON_ONCE(1);
  curr = 0;
  break;
 }

 return curr;
}
