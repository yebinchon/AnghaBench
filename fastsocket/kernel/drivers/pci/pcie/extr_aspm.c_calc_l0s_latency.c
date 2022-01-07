
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static u32 calc_l0s_latency(u32 encoding)
{
 if (encoding == 0x7)
  return (5 * 1000);
 return (64 << encoding);
}
