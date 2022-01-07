
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ushort ;
typedef int PortAddr ;


 int AscSetChipLramAddr (int ,int ) ;
 int AscSetChipLramData (int ,int ) ;

__attribute__((used)) static void AscWriteLramWord(PortAddr iop_base, ushort addr, ushort word_val)
{
 AscSetChipLramAddr(iop_base, addr);
 AscSetChipLramData(iop_base, word_val);
}
