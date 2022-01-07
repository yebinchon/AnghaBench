
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static bool opcode_is_prefix(uint8_t b)
{
 return

  b == 0xf0 || b == 0xf2 || b == 0xf3

  || b == 0x2e || b == 0x36 || b == 0x3e || b == 0x26
  || b == 0x64 || b == 0x65 || b == 0x2e || b == 0x3e

  || b == 0x66

  || b == 0x67;
}
