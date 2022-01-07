
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;


 unsigned int REGULATOR_MODE_NORMAL ;

__attribute__((used)) static unsigned int wm8400_dcdc_get_optimum_mode(struct regulator_dev *dev,
       int input_uV, int output_uV,
       int load_uA)
{
 return REGULATOR_MODE_NORMAL;
}
