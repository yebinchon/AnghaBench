
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 long ENODEV ;
 int HEATHROW_FCR ;
 int HRW_IDE0_RESET_N ;
 int HRW_IDE1_RESET_N ;
 int macio_unknown ;
 long simple_feature_tweak (struct device_node*,int ,int ,int ,int) ;

__attribute__((used)) static long heathrow_ide_reset(struct device_node *node, long param,
          long value)
{
 switch(param) {
 case 0:
  return simple_feature_tweak(node, macio_unknown,
   HEATHROW_FCR, HRW_IDE0_RESET_N, !value);
 case 1:
  return simple_feature_tweak(node, macio_unknown,
   HEATHROW_FCR, HRW_IDE1_RESET_N, !value);
 default:
  return -ENODEV;
 }
}
