
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CF_ATASEL_DIS ;
 int CF_ATASEL_ENA ;
 int mdelay (int) ;
 int outw (int ,int ) ;

__attribute__((used)) static int bfin_cf_reset(void)
{
 outw(0, CF_ATASEL_ENA);
 mdelay(200);
 outw(0, CF_ATASEL_DIS);

 return 0;
}
