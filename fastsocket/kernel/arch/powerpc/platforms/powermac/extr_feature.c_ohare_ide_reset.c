
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 long ENODEV ;
 int OHARE_FCR ;
 int OH_IDE0_RESET_N ;
 int OH_IDE1_RESET_N ;
 int macio_ohare ;
 long simple_feature_tweak (struct device_node*,int ,int ,int ,int) ;

__attribute__((used)) static long ohare_ide_reset(struct device_node *node, long param, long value)
{
 switch(param) {
 case 0:
  return simple_feature_tweak(node, macio_ohare,
   OHARE_FCR, OH_IDE0_RESET_N, !value);
 case 1:
  return simple_feature_tweak(node, macio_ohare,
   OHARE_FCR, OH_IDE1_RESET_N, !value);
 default:
  return -ENODEV;
 }
}
