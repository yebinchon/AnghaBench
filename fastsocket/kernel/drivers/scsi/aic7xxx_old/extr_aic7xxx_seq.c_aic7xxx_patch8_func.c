
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aic7xxx_host {int features; } ;


 int AHC_ULTRA ;

__attribute__((used)) static int
aic7xxx_patch8_func(struct aic7xxx_host *p)
{
 return ((p->features & AHC_ULTRA) != 0);
}
