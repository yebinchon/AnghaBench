
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int reloc_put16 (int*,int) ;

__attribute__((used)) static void reloc_put24(uint8_t *p, uint32_t val)
{
 reloc_put16(p, val);
 p[2] = (val >> 16) & 0xff;
}
