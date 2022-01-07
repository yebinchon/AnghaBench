
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tg3 {int dummy; } ;
typedef scalar_t__ dma_addr_t ;


 scalar_t__ ASIC_REV_5762 ;
 scalar_t__ tg3_asic_rev (struct tg3*) ;

__attribute__((used)) static inline int tg3_4g_tso_overflow_test(struct tg3 *tp, dma_addr_t mapping,
        u32 len, u32 mss)
{
 if (tg3_asic_rev(tp) == ASIC_REV_5762 && mss) {
  u32 base = (u32) mapping & 0xffffffff;

  return ((base + len + (mss & 0x3fff)) < base);
 }
 return 0;
}
