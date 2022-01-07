
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CKSEG1ADDR (scalar_t__) ;
 scalar_t__ KN01_RTC ;
 scalar_t__ KN01_SLOT_BASE ;
 int KN01_SLOT_SIZE ;
 scalar_t__ dec_kn_slot_base ;
 int dec_kn_slot_size ;
 void* dec_rtc_base ;

__attribute__((used)) static inline void prom_init_kn230(void)
{
 dec_kn_slot_base = KN01_SLOT_BASE;
 dec_kn_slot_size = KN01_SLOT_SIZE;

 dec_rtc_base = (void *)CKSEG1ADDR(dec_kn_slot_base + KN01_RTC);
}
