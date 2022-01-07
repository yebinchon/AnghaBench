
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 int OHARE_FCR ;
 int OH_FLOPPY_ENABLE ;
 int macio_ohare ;
 long simple_feature_tweak (struct device_node*,int ,int ,int ,long) ;

__attribute__((used)) static long ohare_floppy_enable(struct device_node *node, long param,
    long value)
{
 return simple_feature_tweak(node, macio_ohare,
  OHARE_FCR, OH_FLOPPY_ENABLE, value);
}
