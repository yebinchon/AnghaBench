
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int chipcHw_REG_BUS_CLOCK_DMAC0 ;
 int chipcHw_REG_BUS_CLOCK_DMAC1 ;
 int chipcHw_busInterfaceClockDisable (int ) ;

void dmacHw_exitDma(void)
{

 chipcHw_busInterfaceClockDisable(chipcHw_REG_BUS_CLOCK_DMAC0);
 chipcHw_busInterfaceClockDisable(chipcHw_REG_BUS_CLOCK_DMAC1);
}
