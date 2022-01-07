
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int HZ ;
 int RTC_ISTAT_WRITE_PENDING ;
 int bfin_read_RTC_ISTAT () ;
 int bfin_write_complete ;
 int dev_dbg_stamp (struct device*) ;
 int wait_for_completion_timeout (int *,int) ;

__attribute__((used)) static void bfin_rtc_sync_pending(struct device *dev)
{
 dev_dbg_stamp(dev);
 while (bfin_read_RTC_ISTAT() & RTC_ISTAT_WRITE_PENDING)
  wait_for_completion_timeout(&bfin_write_complete, HZ * 5);
 dev_dbg_stamp(dev);
}
