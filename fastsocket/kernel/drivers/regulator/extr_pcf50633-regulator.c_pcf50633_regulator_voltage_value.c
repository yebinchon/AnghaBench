
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef enum pcf50633_regulator_id { ____Placeholder_pcf50633_regulator_id } pcf50633_regulator_id ;


 int EINVAL ;
 int auto_voltage_value (int ) ;
 int down_voltage_value (int ) ;
 int ldo_voltage_value (int ) ;

__attribute__((used)) static int pcf50633_regulator_voltage_value(enum pcf50633_regulator_id id,
      u8 bits)
{
 int millivolts;

 switch (id) {
 case 137:
  millivolts = auto_voltage_value(bits);
  break;
 case 136:
  millivolts = down_voltage_value(bits);
  break;
 case 135:
  millivolts = down_voltage_value(bits);
  break;
 case 133:
 case 132:
 case 131:
 case 130:
 case 129:
 case 128:
 case 134:
  millivolts = ldo_voltage_value(bits);
  break;
 default:
  return -EINVAL;
 }

 return millivolts * 1000;
}
