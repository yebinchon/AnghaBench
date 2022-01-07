
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CACHE_SET_SIZE (unsigned long) ;
 int CACHE_WAY_PER_SET ;
 int dsb () ;

__attribute__((used)) static inline void xsc3_l2_flush_all(void)
{
 unsigned long l2ctype, set_way;
 int set, way;

 __asm__("mrc p15, 1, %0, c0, c0, 1" : "=r" (l2ctype));

 for (set = 0; set < CACHE_SET_SIZE(l2ctype); set++) {
  for (way = 0; way < CACHE_WAY_PER_SET; way++) {
   set_way = (way << 29) | (set << 5);
   __asm__("mcr p15, 1, %0, c7, c15, 2" : : "r"(set_way));
  }
 }

 dsb();
}
