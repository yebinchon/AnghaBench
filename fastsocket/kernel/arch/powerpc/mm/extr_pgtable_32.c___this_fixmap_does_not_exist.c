
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WARN_ON (int) ;

void __this_fixmap_does_not_exist(void)
{
 WARN_ON(1);
}
