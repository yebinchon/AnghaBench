
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HPWMI_HARDWARE_QUERY ;
 int hp_wmi_perform_query (int ,int ,int ) ;

__attribute__((used)) static int hp_wmi_tablet_state(void)
{
 int ret = hp_wmi_perform_query(HPWMI_HARDWARE_QUERY, 0, 0);

 if (ret < 0)
  return ret;

 return (ret & 0x4) ? 1 : 0;
}
