
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pd_dvb_adapter {long last_jiffies; } ;


 int abs (long) ;
 long jiffies ;
 unsigned int jiffies_to_msecs (int ) ;

__attribute__((used)) static int fw_delay_overflow(struct pd_dvb_adapter *adapter)
{
 long nl = jiffies - adapter->last_jiffies;
 unsigned int msec ;

 msec = jiffies_to_msecs(abs(nl));
 return msec > 800 ? 1 : 0;
}
