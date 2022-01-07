
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time_data {int com; scalar_t__ rc; int ce_msg; } ;
struct ce_msg_data {int dummy; } ;


 int complete (int *) ;
 int memcpy (int *,struct ce_msg_data*,int) ;

__attribute__((used)) static void get_rtc_time_complete(void *token, struct ce_msg_data *ce_msg)
{
 struct rtc_time_data *rtc = token;

 memcpy(&rtc->ce_msg, ce_msg, sizeof(rtc->ce_msg));
 rtc->rc = 0;
 complete(&rtc->com);
}
