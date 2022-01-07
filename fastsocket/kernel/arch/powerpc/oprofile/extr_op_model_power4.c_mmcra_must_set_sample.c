
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PV_970 ;
 int PV_970FX ;
 int PV_970GX ;
 int PV_970MP ;
 int PV_POWER4 ;
 int PV_POWER4p ;
 scalar_t__ __is_processor (int ) ;

__attribute__((used)) static inline int mmcra_must_set_sample(void)
{
 if (__is_processor(PV_POWER4) || __is_processor(PV_POWER4p) ||
     __is_processor(PV_970) || __is_processor(PV_970FX) ||
     __is_processor(PV_970MP) || __is_processor(PV_970GX))
  return 1;

 return 0;
}
