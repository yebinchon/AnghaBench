
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned command_2_index(unsigned c, unsigned sc)
{
 if (c & 0x80)
  c = 0x9 + (c & 0x0f);
 else if (c <= 0x0f);
 else if (c == 0x41)
  c = 0x9 + 0x1;
 else if (c == 0xff)
  c = 0x00;
 return (sc & 3) * (0x9 + 0x9) + c;
}
