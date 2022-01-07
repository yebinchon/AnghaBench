
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENODEV ;
 int pr_err (char*,int) ;

__attribute__((used)) static int set_max_cos_est(int chip_id)
{
 switch (chip_id) {
 case 148:
 case 147:
 case 146:
 case 145:
 case 144:
 case 143:
 case 142:
 case 141:
 case 140:
 case 139:
 case 138:
 case 132:
 case 133:
 case 129:
 case 130:
 case 137:
 case 131:
 case 128:
 case 136:
 case 135:
 case 134:
  return 1;
 default:
  pr_err("Unknown board_type (%d), aborting\n", chip_id);
  return -ENODEV;
 }
}
