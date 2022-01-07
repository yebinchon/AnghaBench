
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 long ENODEV ;
 int OHARE_FCR ;
 int OH_BAY_IDE_ENABLE ;
 int OH_IDE0_ENABLE ;
 int OH_IOBUS_ENABLE ;
 int macio_ohare ;
 long simple_feature_tweak (struct device_node*,int ,int ,int ,long) ;

__attribute__((used)) static long ohare_ide_enable(struct device_node *node, long param, long value)
{
 switch(param) {
 case 0:



  if (value)
   simple_feature_tweak(node, macio_ohare,
    OHARE_FCR, OH_IOBUS_ENABLE, 1);
  return simple_feature_tweak(node, macio_ohare,
   OHARE_FCR, OH_IDE0_ENABLE, value);
 case 1:
  return simple_feature_tweak(node, macio_ohare,
   OHARE_FCR, OH_BAY_IDE_ENABLE, value);
 default:
  return -ENODEV;
 }
}
