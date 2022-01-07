
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HMT_low () ;
 int HMT_medium () ;
 scalar_t__ __USE_RTC () ;
 unsigned long get_rtcl () ;
 unsigned long get_tbl () ;

void __delay(unsigned long loops)
{
 unsigned long start;
 int diff;

 if (__USE_RTC()) {
  start = get_rtcl();
  do {

   diff = get_rtcl() - start;
   if (diff < 0)
    diff += 1000000000;
  } while (diff < loops);
 } else {
  start = get_tbl();
  while (get_tbl() - start < loops)
   HMT_low();
  HMT_medium();
 }
}
