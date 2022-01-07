
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef int SLMP_INFO ;


 int CALC_REGADDR () ;
 scalar_t__ RegAddr ;

__attribute__((used)) static void write_reg16(SLMP_INFO * info, unsigned char Addr, u16 Value)
{
 CALC_REGADDR();
 *((u16 *)RegAddr) = Value;
}
