
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_device {scalar_t__ id; } ;


 int remove_proc_entry (char*,int *) ;

void rtc_proc_del_device(struct rtc_device *rtc)
{
 if (rtc->id == 0)
  remove_proc_entry("driver/rtc", ((void*)0));
}
