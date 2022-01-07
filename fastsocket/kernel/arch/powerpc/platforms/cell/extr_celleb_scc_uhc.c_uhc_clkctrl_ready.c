
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const u32 ;


 int SCC_UHC_USBCEN ;

__attribute__((used)) static inline int uhc_clkctrl_ready(u32 val)
{
 const u32 mask = SCC_UHC_USBCEN | SCC_UHC_USBCEN;
 return((val & mask) == mask);
}
