
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static __inline__ void _set_bit(u32 * word, u32 mask, int value)
{
 *word = (*word & ~mask) | (mask * value);
}
