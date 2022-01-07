
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int* allow ;

__attribute__((used)) static inline int allow_reg_read(unsigned block, unsigned offset, unsigned bits)
{
 unsigned mask = (1 << bits/8) - 1;
 offset *= bits/8;
 return ((allow[block] >> offset) & mask) == mask;
}
