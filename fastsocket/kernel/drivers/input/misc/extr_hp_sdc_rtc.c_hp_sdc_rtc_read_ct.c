
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ time_t ;
typedef int suseconds_t ;
struct timeval {int tv_usec; scalar_t__ tv_sec; } ;
typedef scalar_t__ int64_t ;


 int HP_SDC_CMD_LOAD_CT ;
 scalar_t__ hp_sdc_rtc_read_i8042timer (int ,int) ;

__attribute__((used)) static inline int hp_sdc_rtc_read_ct(struct timeval *res) {
 int64_t raw;
 uint32_t tenms;

 raw = hp_sdc_rtc_read_i8042timer(HP_SDC_CMD_LOAD_CT, 3);
 if (raw < 0) return -1;

 tenms = (uint32_t)raw & 0xffffff;

 res->tv_usec = (suseconds_t)(tenms % 100) * 10000;
 res->tv_sec = (time_t)(tenms / 100);

 return 0;
}
