
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
powerctrl_1_shift(int chip_version, int reg)
{
 int shift = -4;

 if (chip_version < 0x17 || chip_version == 0x1a || chip_version == 0x20)
  return shift;

 switch (reg) {
 case 0x680520:
  shift += 4;
 case 0x680508:
  shift += 4;
 case 0x680504:
  shift += 4;
 case 0x680500:
  shift += 4;
 }





 if (shift > 4 && (chip_version < 0x32 || chip_version == 0x35 ||
     chip_version == 0x36 || chip_version >= 0x40))
  shift = -4;

 return shift;
}
