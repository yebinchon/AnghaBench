
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int SSB_ADM_NEG ;
 int SSB_ADM_SZ0 ;
 int SSB_ADM_SZ0_SHIFT ;
 int SSB_ADM_SZ1 ;
 int SSB_ADM_SZ1_SHIFT ;
 int SSB_ADM_SZ2 ;
 int SSB_ADM_SZ2_SHIFT ;
 int SSB_ADM_TYPE ;



 int SSB_WARN_ON (int) ;

u32 ssb_admatch_size(u32 adm)
{
 u32 size = 0;

 switch (adm & SSB_ADM_TYPE) {
 case 130:
  size = ((adm & SSB_ADM_SZ0) >> SSB_ADM_SZ0_SHIFT);
  break;
 case 129:
  SSB_WARN_ON(adm & SSB_ADM_NEG);
  size = ((adm & SSB_ADM_SZ1) >> SSB_ADM_SZ1_SHIFT);
  break;
 case 128:
  SSB_WARN_ON(adm & SSB_ADM_NEG);
  size = ((adm & SSB_ADM_SZ2) >> SSB_ADM_SZ2_SHIFT);
  break;
 default:
  SSB_WARN_ON(1);
 }
 size = (1 << (size + 1));

 return size;
}
