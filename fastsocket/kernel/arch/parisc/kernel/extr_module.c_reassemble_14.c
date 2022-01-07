
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int reassemble_14(int as14)
{
 return (((as14 & 0x1fff) << 1) |
  ((as14 & 0x2000) >> 13));
}
