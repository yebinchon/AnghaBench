
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HPWMI_WIRELESS_QUERY ;
 int hp_wmi_perform_query (int ,int ,int ) ;

__attribute__((used)) static bool hp_wmi_wifi_state(void)
{
 int wireless = hp_wmi_perform_query(HPWMI_WIRELESS_QUERY, 0, 0);

 if (wireless & 0x100)
  return 0;
 else
  return 1;
}
