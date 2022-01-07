
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int pack_ad8522(int addr, int val, int *bitstring)
{
 *bitstring = (val & 0xfff) | (addr ? 0xc000 : 0xa000);
 return 16;
}
