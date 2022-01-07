
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_device {scalar_t__ id; } ;


 int proc_create_data (char*,int ,int *,int *,struct rtc_device*) ;
 int rtc_proc_fops ;

void rtc_proc_add_device(struct rtc_device *rtc)
{
 if (rtc->id == 0)
  proc_create_data("driver/rtc", 0, ((void*)0), &rtc_proc_fops, rtc);
}
