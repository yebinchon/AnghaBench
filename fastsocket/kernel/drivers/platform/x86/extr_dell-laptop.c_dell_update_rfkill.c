
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 scalar_t__ bluetooth_rfkill ;
 int dell_rfkill_query (scalar_t__,void*) ;
 scalar_t__ wifi_rfkill ;
 scalar_t__ wwan_rfkill ;

__attribute__((used)) static void dell_update_rfkill(struct work_struct *ignored)
{
 if (wifi_rfkill)
  dell_rfkill_query(wifi_rfkill, (void *)1);
 if (bluetooth_rfkill)
  dell_rfkill_query(bluetooth_rfkill, (void *)2);
 if (wwan_rfkill)
  dell_rfkill_query(wwan_rfkill, (void *)3);
}
