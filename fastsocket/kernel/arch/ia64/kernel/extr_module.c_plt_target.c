
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct plt_entry {scalar_t__* bundle; } ;



unsigned long
plt_target (struct plt_entry *plt)
{
 uint64_t b0, b1, *b = (uint64_t *) plt->bundle[1];
 long off;

 b0 = b[0]; b1 = b[1];
 off = ( ((b1 & 0x00fffff000000000UL) >> 36)
        | ((b0 >> 48) << 20) | ((b1 & 0x7fffffUL) << 36)
        | ((b1 & 0x0800000000000000UL) << 0));
 return (long) plt->bundle[1] + 16*off;
}
