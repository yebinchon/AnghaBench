
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ HV_INTC_FC_PAGE_START ;

__attribute__((used)) static u32 e1000_get_phy_addr_for_hv_page(u32 page)
{
 u32 phy_addr = 2;

 if (page >= HV_INTC_FC_PAGE_START)
  phy_addr = 1;

 return phy_addr;
}
