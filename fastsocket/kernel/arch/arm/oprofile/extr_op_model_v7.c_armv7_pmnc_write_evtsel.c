
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int EVTSEL_MASK ;
 unsigned int armv7_pmnc_select_counter (unsigned int) ;

__attribute__((used)) static inline void armv7_pmnc_write_evtsel(unsigned int cnt, u32 val)
{
 if (armv7_pmnc_select_counter(cnt) == cnt) {
  val &= EVTSEL_MASK;
  asm volatile("mcr p15, 0, %0, c9, c13, 1" : : "r" (val));
 }
}
