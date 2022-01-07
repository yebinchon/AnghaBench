
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;


 int* buck_voltage_map ;

__attribute__((used)) static int lp3971_dcdc_list_voltage(struct regulator_dev *dev, unsigned index)
{
 return 1000 * buck_voltage_map[index];
}
