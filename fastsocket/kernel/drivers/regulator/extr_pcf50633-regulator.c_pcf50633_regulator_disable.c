
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct regulator_dev {int dummy; } ;
struct pcf50633 {int dummy; } ;


 int EINVAL ;
 int PCF50633_NUM_REGULATORS ;
 int PCF50633_REGULATOR_ON ;
 int pcf50633_reg_set_bit_mask (struct pcf50633*,scalar_t__,int ,int ) ;
 scalar_t__* pcf50633_regulator_registers ;
 struct pcf50633* rdev_get_drvdata (struct regulator_dev*) ;
 int rdev_get_id (struct regulator_dev*) ;

__attribute__((used)) static int pcf50633_regulator_disable(struct regulator_dev *rdev)
{
 struct pcf50633 *pcf = rdev_get_drvdata(rdev);
 int regulator_id;
 u8 regnr;

 regulator_id = rdev_get_id(rdev);
 if (regulator_id >= PCF50633_NUM_REGULATORS)
  return -EINVAL;


 regnr = pcf50633_regulator_registers[regulator_id] + 1;

 return pcf50633_reg_set_bit_mask(pcf, regnr,
     PCF50633_REGULATOR_ON, 0);
}
