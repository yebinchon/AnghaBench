
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned secondary_DMAChannel_bits(unsigned channel)
{
 return (channel << 2) & 0xc;
}
