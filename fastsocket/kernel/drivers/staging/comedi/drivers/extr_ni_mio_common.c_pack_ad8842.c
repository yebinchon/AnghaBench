
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int pack_ad8842(int addr, int val, int *bitstring)
{
 *bitstring = ((addr + 1) << 8) | (val & 0xff);
 return 12;
}
