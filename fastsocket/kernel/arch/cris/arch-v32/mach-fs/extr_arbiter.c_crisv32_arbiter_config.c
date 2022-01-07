
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s8 ;


 int EXT_REGION ;
 int INT_REGION ;
 int NBR_OF_CLIENTS ;
 int NBR_OF_SLOTS ;
 int REG_WR_INT_VECT (int ,int ,int ,int,int) ;
 int ** active_clients ;
 int marb ;
 int regi_marb ;
 int** requested_slots ;
 int rw_ext_slots ;
 int rw_int_slots ;

__attribute__((used)) static void crisv32_arbiter_config(int region, int unused_slots)
{
 int slot;
 int client;
 int interval = 0;
 s8 val[NBR_OF_SLOTS];

 for (slot = 0; slot < NBR_OF_SLOTS; slot++)
  val[slot] = -1;

 for (client = 0; client < NBR_OF_CLIENTS; client++) {
  int pos;
  if (!requested_slots[region][client]) {





   if (!active_clients[region][client]
       || unused_slots <= 0)
    continue;

   unused_slots--;


   interval = NBR_OF_SLOTS;
  } else
   interval =
       NBR_OF_SLOTS / requested_slots[region][client];

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
   while (!active_clients[region][client]) {
    client = (client + 1) % NBR_OF_CLIENTS;
    if (client == first)
     break;
   }
   val[slot] = client;
   client = (client + 1) % NBR_OF_CLIENTS;
  }
  if (region == EXT_REGION)
   REG_WR_INT_VECT(marb, regi_marb, rw_ext_slots, slot,
     val[slot]);
  else if (region == INT_REGION)
   REG_WR_INT_VECT(marb, regi_marb, rw_int_slots, slot,
     val[slot]);
 }
}
