
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int m41t81_set_time (unsigned long) ;
 int swarm_rtc_type ;
 int xicor_set_time (unsigned long) ;

int rtc_mips_set_time(unsigned long sec)
{
 switch (swarm_rtc_type) {
 case 128:
  return xicor_set_time(sec);

 case 130:
  return m41t81_set_time(sec);

 case 129:
 default:
  return -1;
 }
}
