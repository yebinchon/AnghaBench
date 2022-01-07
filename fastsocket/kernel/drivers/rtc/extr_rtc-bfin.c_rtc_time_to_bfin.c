
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int DAY_BITS_OFF ;
 int HOUR_BITS_OFF ;
 int MIN_BITS_OFF ;
 int SEC_BITS_OFF ;

__attribute__((used)) static inline u32 rtc_time_to_bfin(unsigned long now)
{
 u32 sec = (now % 60);
 u32 min = (now % (60 * 60)) / 60;
 u32 hour = (now % (60 * 60 * 24)) / (60 * 60);
 u32 days = (now / (60 * 60 * 24));
 return (sec << SEC_BITS_OFF) +
        (min << MIN_BITS_OFF) +
        (hour << HOUR_BITS_OFF) +
        (days << DAY_BITS_OFF);
}
