
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct regulator_dev {int dummy; } ;
struct pcf50633 {int dummy; } ;


 int EINVAL ;
 int PCF50633_NUM_REGULATORS ;
 int auto_voltage_bits (int) ;
 int down_voltage_bits (int) ;
 int ldo_voltage_bits (int) ;
 int pcf50633_reg_write (struct pcf50633*,int ,int ) ;
 int * pcf50633_regulator_registers ;
 struct pcf50633* rdev_get_drvdata (struct regulator_dev*) ;
 int rdev_get_id (struct regulator_dev*) ;

__attribute__((used)) static int pcf50633_regulator_set_voltage(struct regulator_dev *rdev,
      int min_uV, int max_uV)
{
 struct pcf50633 *pcf;
 int regulator_id, millivolts;
 u8 volt_bits, regnr;

 pcf = rdev_get_drvdata(rdev);

 regulator_id = rdev_get_id(rdev);
 if (regulator_id >= PCF50633_NUM_REGULATORS)
  return -EINVAL;

 millivolts = min_uV / 1000;

 regnr = pcf50633_regulator_registers[regulator_id];

 switch (regulator_id) {
 case 137:
  volt_bits = auto_voltage_bits(millivolts);
  break;
 case 136:
  volt_bits = down_voltage_bits(millivolts);
  break;
 case 135:
  volt_bits = down_voltage_bits(millivolts);
  break;
 case 133:
 case 132:
 case 131:
 case 130:
 case 129:
 case 128:
 case 134:
  volt_bits = ldo_voltage_bits(millivolts);
  break;
 default:
  return -EINVAL;
 }

 return pcf50633_reg_write(pcf, regnr, volt_bits);
}
