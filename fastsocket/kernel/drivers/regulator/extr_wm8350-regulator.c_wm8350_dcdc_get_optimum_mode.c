
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;


 int REGULATOR_MODE_NORMAL ;




 int dcdc1_6_efficiency ;
 int dcdc3_4_efficiency ;
 int get_mode (int,int ) ;
 int rdev_get_id (struct regulator_dev*) ;

__attribute__((used)) static unsigned int wm8350_dcdc_get_optimum_mode(struct regulator_dev *rdev,
       int input_uV, int output_uV,
       int output_uA)
{
 int dcdc = rdev_get_id(rdev), mode;

 switch (dcdc) {
 case 131:
 case 128:
  mode = get_mode(output_uA, dcdc1_6_efficiency);
  break;
 case 130:
 case 129:
  mode = get_mode(output_uA, dcdc3_4_efficiency);
  break;
 default:
  mode = REGULATOR_MODE_NORMAL;
  break;
 }
 return mode;
}
