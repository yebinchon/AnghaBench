
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aic7xxx_host {int chip; } ;


 int AHC_AIC7895 ;
 int AHC_CHIPID_MASK ;

__attribute__((used)) static int
aic7xxx_patch9_func(struct aic7xxx_host *p)
{
 return ((p->chip & AHC_CHIPID_MASK) == AHC_AIC7895);
}
