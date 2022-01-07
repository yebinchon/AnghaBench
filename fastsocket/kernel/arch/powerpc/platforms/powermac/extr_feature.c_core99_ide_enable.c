
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 long ENODEV ;
 int KEYLARGO_FCR1 ;
 int KL1_EIDE0_ENABLE ;
 int KL1_EIDE1_ENABLE ;
 int KL1_UIDE_ENABLE ;
 long core99_ata100_enable (struct device_node*,long) ;
 int macio_unknown ;
 long simple_feature_tweak (struct device_node*,int ,int ,int ,long) ;

__attribute__((used)) static long
core99_ide_enable(struct device_node *node, long param, long value)
{



 switch(param) {
     case 0:
  return simple_feature_tweak(node, macio_unknown,
   KEYLARGO_FCR1, KL1_EIDE0_ENABLE, value);
     case 1:
  return simple_feature_tweak(node, macio_unknown,
   KEYLARGO_FCR1, KL1_EIDE1_ENABLE, value);
     case 2:
  return simple_feature_tweak(node, macio_unknown,
   KEYLARGO_FCR1, KL1_UIDE_ENABLE, value);
     case 3:
  return core99_ata100_enable(node, value);
     default:
  return -ENODEV;
 }
}
