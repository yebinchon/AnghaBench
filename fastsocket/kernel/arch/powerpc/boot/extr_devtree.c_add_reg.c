
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int MAX_ADDR_CELLS ;

__attribute__((used)) static int add_reg(u32 *reg, u32 *add, int naddr)
{
 int i, carry = 0;

 for (i = MAX_ADDR_CELLS - 1; i >= MAX_ADDR_CELLS - naddr; i--) {
  u64 tmp = (u64)reg[i] + add[i] + carry;
  carry = tmp >> 32;
  reg[i] = (u32)tmp;
 }

 return !carry;
}
