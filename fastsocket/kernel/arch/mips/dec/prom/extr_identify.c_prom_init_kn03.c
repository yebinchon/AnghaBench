
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CKSEG1ADDR (scalar_t__) ;
 scalar_t__ IOASIC_IOCTL ;
 int IOASIC_SLOT_SIZE ;
 scalar_t__ IOASIC_TOY ;
 scalar_t__ KN03_SLOT_BASE ;
 scalar_t__ dec_kn_slot_base ;
 int dec_kn_slot_size ;
 void* dec_rtc_base ;
 int dec_tc_bus ;
 void* ioasic_base ;

__attribute__((used)) static inline void prom_init_kn03(void)
{
 dec_kn_slot_base = KN03_SLOT_BASE;
 dec_kn_slot_size = IOASIC_SLOT_SIZE;
 dec_tc_bus = 1;

 ioasic_base = (void *)CKSEG1ADDR(dec_kn_slot_base + IOASIC_IOCTL);
 dec_rtc_base = (void *)CKSEG1ADDR(dec_kn_slot_base + IOASIC_TOY);
}
