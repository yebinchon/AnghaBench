
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ dma_addr_t ;



__attribute__((used)) static inline int tg3_4g_overflow_test(dma_addr_t mapping, int len)
{
 u32 base = (u32) mapping & 0xffffffff;

 return (base > 0xffffdcc0) && (base + len + 8 < base);
}
