
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ushort ;
typedef int PortAddr ;


 int ASC_CFG0_HOST_INT_ON ;
 int AscGetChipCfgLsw (int ) ;
 int AscSetChipCfgLsw (int ,int) ;

__attribute__((used)) static void AscDisableInterrupt(PortAddr iop_base)
{
 ushort cfg;

 cfg = AscGetChipCfgLsw(iop_base);
 AscSetChipCfgLsw(iop_base, cfg & (~ASC_CFG0_HOST_INT_ON));
}
