
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HPWMI_ALS_QUERY ;
 int hp_wmi_perform_query (int ,int ,int ) ;

__attribute__((used)) static int hp_wmi_als_state(void)
{
 return hp_wmi_perform_query(HPWMI_ALS_QUERY, 0, 0);
}
