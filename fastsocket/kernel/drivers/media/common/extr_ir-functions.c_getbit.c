
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static int inline getbit(u32 *samples, int bit)
{
 return (samples[bit/32] & (1 << (31-(bit%32)))) ? 1 : 0;
}
