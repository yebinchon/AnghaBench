
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BIT (unsigned long) ;
 int HPWMI_WIRELESS_QUERY ;
 int hp_wmi_perform_query (int ,int,int) ;

__attribute__((used)) static int hp_wmi_set_block(void *data, bool blocked)
{
 unsigned long b = (unsigned long) data;
 int query = BIT(b + 8) | ((!blocked) << b);

 return hp_wmi_perform_query(HPWMI_WIRELESS_QUERY, 1, query);
}
