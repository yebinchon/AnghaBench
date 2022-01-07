
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NBR_OF_CLIENTS ;
 scalar_t__ NBR_OF_SLOTS ;
 scalar_t__** active_clients ;
 int crisv32_arbiter_config (int,scalar_t__) ;
 scalar_t__** requested_slots ;

void crisv32_arbiter_deallocate_bandwidth(int client, int region)
{
 int i;
 int total_assigned = 0;

 requested_slots[region][client] = 0;
 active_clients[region][client] = 0;

 for (i = 0; i < NBR_OF_CLIENTS; i++)
  total_assigned += requested_slots[region][i];

 crisv32_arbiter_config(region, NBR_OF_SLOTS - total_assigned);
}
