
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dev; struct ab3100_regulator* reg_data; } ;
struct ab3100_regulator {int voltages_len; int* typ_voltages; } ;


 int EINVAL ;
 int INT_MAX ;
 int dev_warn (int *,char*,int,int) ;

__attribute__((used)) static int ab3100_get_best_voltage_index(struct regulator_dev *reg,
       int min_uV, int max_uV)
{
 struct ab3100_regulator *abreg = reg->reg_data;
 int i;
 int bestmatch;
 int bestindex;







 bestmatch = INT_MAX;
 bestindex = -1;
 for (i = 0; i < abreg->voltages_len; i++) {
  if (abreg->typ_voltages[i] <= max_uV &&
      abreg->typ_voltages[i] >= min_uV &&
      abreg->typ_voltages[i] < bestmatch) {
   bestmatch = abreg->typ_voltages[i];
   bestindex = i;
  }
 }

 if (bestindex < 0) {
  dev_warn(&reg->dev, "requested %d<=x<=%d uV, out of range!\n",
    min_uV, max_uV);
  return -EINVAL;
 }
 return bestindex;
}
