
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pd_dvb_adapter {scalar_t__ prev_freq; int bandwidth; long last_jiffies; } ;
typedef scalar_t__ __u32 ;


 int abs (long) ;
 long jiffies ;
 unsigned int jiffies_to_msecs (int ) ;

__attribute__((used)) static bool check_scan_ok(__u32 freq, int bandwidth,
   struct pd_dvb_adapter *adapter)
{
 if (bandwidth < 0)
  return 0;

 if (adapter->prev_freq == freq
  && adapter->bandwidth == bandwidth) {
  long nl = jiffies - adapter->last_jiffies;
  unsigned int msec ;

  msec = jiffies_to_msecs(abs(nl));
  return msec > 15000 ? 1 : 0;
 }
 return 1;
}
