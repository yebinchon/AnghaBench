
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int reassemble_22(int as22)
{
 return (((as22 & 0x200000) >> 21) |
  ((as22 & 0x1f0000) << 5) |
  ((as22 & 0x00f800) << 5) |
  ((as22 & 0x000400) >> 8) |
  ((as22 & 0x0003ff) << 3));
}
