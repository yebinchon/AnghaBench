
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int insn_length(unsigned char code)
{
 return ((((int) code + 64) >> 7) + 1) << 1;
}
