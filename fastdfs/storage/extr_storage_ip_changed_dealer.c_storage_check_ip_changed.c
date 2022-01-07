
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ count; } ;


 TYPE_1__ g_last_storage_ip ;
 int g_storage_ip_changed_auto_adjust ;
 scalar_t__ g_use_storage_id ;
 int storage_changelog_req () ;
 int storage_report_storage_ip_addr () ;

int storage_check_ip_changed()
{
 int result;

 if ((!g_storage_ip_changed_auto_adjust) || g_use_storage_id)
 {
  return 0;
 }

 if ((result=storage_report_storage_ip_addr()) != 0)
 {
  return result;
 }

 if (g_last_storage_ip.count == 0)
 {
  return 0;
 }

 return storage_changelog_req();
}
