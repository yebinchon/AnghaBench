
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static inline unsigned int s3c2412_decode_timing(unsigned int clock, u32 reg)
{
 return (reg & 0xf) * clock;
}
