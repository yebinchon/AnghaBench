
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ips_driver {int pta_val; } ;


 int PTA_OFFSET_MASK ;
 int PTA_SLOPE_MASK ;
 int PTA_SLOPE_SHIFT ;
 int PTV_MASK ;
 int THM_PTV ;
 int thm_readw (int ) ;

__attribute__((used)) static u16 read_ptv(struct ips_driver *ips)
{
 u16 val, slope, offset;

 slope = (ips->pta_val & PTA_SLOPE_MASK) >> PTA_SLOPE_SHIFT;
 offset = ips->pta_val & PTA_OFFSET_MASK;

 val = thm_readw(THM_PTV) & PTV_MASK;

 return val;
}
