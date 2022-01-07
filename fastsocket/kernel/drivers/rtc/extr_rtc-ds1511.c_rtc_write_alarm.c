
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef enum ds1511reg { ____Placeholder_ds1511reg } ds1511reg ;


 int rtc_write (int,int) ;

__attribute__((used)) static inline void
rtc_write_alarm(uint8_t val, enum ds1511reg reg)
{
 rtc_write((val | 0x80), reg);
}
