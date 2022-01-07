
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int NBR_OF_CLIENTS ;
 unsigned long NBR_OF_SLOTS ;
 int** active_clients ;
 int crisv32_arbiter_config (int,unsigned long) ;
 int crisv32_arbiter_init () ;
 unsigned long* max_bandwidth ;
 int** requested_slots ;

int crisv32_arbiter_allocate_bandwidth(int client, int region,
           unsigned long bandwidth)
{
 int i;
 int total_assigned = 0;
 int total_clients = 0;
 int req;

 crisv32_arbiter_init();

 for (i = 0; i < NBR_OF_CLIENTS; i++) {
  total_assigned += requested_slots[region][i];
  total_clients += active_clients[region][i];
 }


 req = bandwidth == 0
     ? 0 : NBR_OF_SLOTS / (max_bandwidth[region] / bandwidth);
 if (total_assigned + req > NBR_OF_SLOTS)
  return -ENOMEM;

 active_clients[region][client] = 1;
 requested_slots[region][client] = req;
 crisv32_arbiter_config(region, NBR_OF_SLOTS - total_assigned);

 return 0;
}
