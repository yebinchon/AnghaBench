
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ce_msg_data {int dummy; } ;
struct boot_rtc_time_data {scalar_t__ busy; scalar_t__ rc; int ce_msg; } ;


 int memcpy (int *,struct ce_msg_data*,int) ;

__attribute__((used)) static void get_boot_rtc_time_complete(void *token, struct ce_msg_data *ce_msg)
{
 struct boot_rtc_time_data *rtc = token;

 memcpy(&rtc->ce_msg, ce_msg, sizeof(rtc->ce_msg));
 rtc->rc = 0;
 rtc->busy = 0;
}
