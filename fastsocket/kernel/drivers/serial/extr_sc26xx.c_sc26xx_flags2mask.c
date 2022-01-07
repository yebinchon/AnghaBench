
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static u8 sc26xx_flags2mask(unsigned int flags, unsigned int bitpos)
{
 unsigned int bit = (flags >> bitpos) & 15;

 return bit ? (1 << (bit - 1)) : 0;
}
