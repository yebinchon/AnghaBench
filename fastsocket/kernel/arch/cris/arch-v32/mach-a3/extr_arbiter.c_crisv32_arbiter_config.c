
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int s8 ;
struct TYPE_2__ {int nbr_clients; int** requested_slots; int ** active_clients; } ;


 int EXT_REGION ;
 int INT_REGION ;
 int NBR_OF_SLOTS ;
 int REG_WR_INT_VECT (int ,int ,int ,int,int) ;
 TYPE_1__* arbiters ;
 int marb_bar ;
 int marb_foo ;
 int regi_marb_bar ;
 int regi_marb_foo ;
 int rw_ddr2_slots ;
 int rw_intm_slots ;
 int rw_l2_slots ;

__attribute__((used)) static void crisv32_arbiter_config(int arbiter, int region, int unused_slots)
{
 int slot;
 int client;
 int interval = 0;
 s8 val[NBR_OF_SLOTS];

 for (slot = 0; slot < NBR_OF_SLOTS; slot++)
     val[slot] = -1;

 for (client = 0; client < arbiters[arbiter].nbr_clients; client++) {
     int pos;
     if (!arbiters[arbiter].requested_slots[region][client]) {





  if (!arbiters[arbiter].active_clients[region][client] ||
    unused_slots <= 0)
   continue;

  unused_slots--;


  interval = NBR_OF_SLOTS;
     } else
  interval = NBR_OF_SLOTS /
   arbiters[arbiter].requested_slots[region][client];

     pos = 0;
     while (pos < NBR_OF_SLOTS) {
  if (val[pos] >= 0)
     pos++;
  else {
   val[pos] = client;
   pos += interval;
  }
     }
 }

 client = 0;
 for (slot = 0; slot < NBR_OF_SLOTS; slot++) {






  if (val[slot] < 0) {
   int first = client;
   while (!arbiters[arbiter].active_clients[region][client]) {
    client = (client + 1) %
     arbiters[arbiter].nbr_clients;
    if (client == first)
       break;
   }
   val[slot] = client;
   client = (client + 1) % arbiters[arbiter].nbr_clients;
  }
  if (arbiter == 0) {
   if (region == EXT_REGION)
    REG_WR_INT_VECT(marb_foo, regi_marb_foo,
     rw_l2_slots, slot, val[slot]);
   else if (region == INT_REGION)
    REG_WR_INT_VECT(marb_foo, regi_marb_foo,
     rw_intm_slots, slot, val[slot]);
  } else {
   REG_WR_INT_VECT(marb_bar, regi_marb_bar,
    rw_ddr2_slots, slot, val[slot]);
  }
 }
}
