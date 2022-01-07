
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;
struct pcf50633 {int dummy; } ;




 int pcf50633_regulator_voltage_value (int,unsigned int) ;
 struct pcf50633* rdev_get_drvdata (struct regulator_dev*) ;
 int rdev_get_id (struct regulator_dev*) ;

__attribute__((used)) static int pcf50633_regulator_list_voltage(struct regulator_dev *rdev,
      unsigned int index)
{
 struct pcf50633 *pcf;
 int regulator_id;

 pcf = rdev_get_drvdata(rdev);

 regulator_id = rdev_get_id(rdev);

 switch (regulator_id) {
 case 129:
  index += 0x2f;
  break;
 case 128:
  index += 0x01;
  break;
 default:
  break;
 }

 return pcf50633_regulator_voltage_value(regulator_id, index);
}
