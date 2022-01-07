
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;



__attribute__((used)) static void reloc_put16(uint8_t *p, uint32_t val)
{
 p[0] = val & 0xff;
 p[1] = (val >> 8) & 0xff;
}
