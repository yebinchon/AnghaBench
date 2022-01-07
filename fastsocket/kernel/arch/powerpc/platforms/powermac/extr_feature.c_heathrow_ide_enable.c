
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 long ENODEV ;
 int HEATHROW_FCR ;
 int HRW_BAY_IDE_ENABLE ;
 int HRW_IDE0_ENABLE ;
 int macio_unknown ;
 long simple_feature_tweak (struct device_node*,int ,int ,int ,long) ;

__attribute__((used)) static long heathrow_ide_enable(struct device_node *node, long param,
    long value)
{
 switch(param) {
 case 0:
  return simple_feature_tweak(node, macio_unknown,
   HEATHROW_FCR, HRW_IDE0_ENABLE, value);
 case 1:
  return simple_feature_tweak(node, macio_unknown,
   HEATHROW_FCR, HRW_BAY_IDE_ENABLE, value);
 default:
  return -ENODEV;
 }
}
