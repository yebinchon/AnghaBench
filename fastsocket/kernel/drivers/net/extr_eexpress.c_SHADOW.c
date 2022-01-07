
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned short int SHADOW(short int addr)
{
 addr &= 0x1f;
 if (addr > 0xf) addr += 0x3ff0;
 return addr + 0x4000;
}
