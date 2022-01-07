
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PortAddr ;


 int AscGetChipControl (int ) ;
 int AscGetChipStatus (int ) ;
 int CC_HALT ;
 int CSW_HALTED ;

__attribute__((used)) static int AscIsChipHalted(PortAddr iop_base)
{
 if ((AscGetChipStatus(iop_base) & CSW_HALTED) != 0) {
  if ((AscGetChipControl(iop_base) & CC_HALT) != 0) {
   return (1);
  }
 }
 return (0);
}
