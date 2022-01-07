
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PPC_OPCODE_POWER4 ;

__attribute__((used)) static int
valid_bo (long value, int dialect)
{
  if ((dialect & PPC_OPCODE_POWER4) == 0)
    {
      switch (value & 0x14)
 {
 default:
 case 0:
   return 1;
 case 0x4:
   return (value & 0x2) == 0;
 case 0x10:
   return (value & 0x8) == 0;
 case 0x14:
   return value == 0x14;
 }
    }
  else
    {
      if ((value & 0x14) == 0)
 return (value & 0x1) == 0;
      else if ((value & 0x14) == 0x14)
 return value == 0x14;
      else
 return 1;
    }
}
