
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int DAY_BITS_OFF ;
 int HOUR_BITS_OFF ;
 int MIN_BITS_OFF ;
 int SEC_BITS_OFF ;

__attribute__((used)) static inline unsigned long rtc_bfin_to_time(u32 rtc_bfin)
{
 return (((rtc_bfin >> SEC_BITS_OFF) & 0x003F)) +
        (((rtc_bfin >> MIN_BITS_OFF) & 0x003F) * 60) +
        (((rtc_bfin >> HOUR_BITS_OFF) & 0x001F) * 60 * 60) +
        (((rtc_bfin >> DAY_BITS_OFF) & 0x7FFF) * 60 * 60 * 24);
}
