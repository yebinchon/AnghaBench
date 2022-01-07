
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int IPW_GATE_ADMA ;
 int IPW_GATE_IDMA ;
 int IPW_GATE_ODMA ;
 int IPW_START_STANDBY ;

__attribute__((used)) static u32 ipw_register_toggle(u32 reg)
{
 reg &= ~IPW_START_STANDBY;
 if (reg & IPW_GATE_ODMA)
  reg &= ~IPW_GATE_ODMA;
 if (reg & IPW_GATE_IDMA)
  reg &= ~IPW_GATE_IDMA;
 if (reg & IPW_GATE_ADMA)
  reg &= ~IPW_GATE_ADMA;
 return reg;
}
