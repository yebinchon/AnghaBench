
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int reassemble_21(int as21)
{
 return (((as21 & 0x100000) >> 20) |
  ((as21 & 0x0ffe00) >> 8) |
  ((as21 & 0x000180) << 7) |
  ((as21 & 0x00007c) << 14) |
  ((as21 & 0x000003) << 12));
}
