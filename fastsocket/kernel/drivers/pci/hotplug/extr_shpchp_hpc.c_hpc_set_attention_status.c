
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct slot {int hp_slot; } ;


 int SET_ATTN_BLINK ;
 int SET_ATTN_OFF ;
 int SET_ATTN_ON ;
 int shpc_write_cmd (struct slot*,int ,int) ;

__attribute__((used)) static int hpc_set_attention_status(struct slot *slot, u8 value)
{
 u8 slot_cmd = 0;

 switch (value) {
  case 0 :
   slot_cmd = SET_ATTN_OFF;
   break;
  case 1:
   slot_cmd = SET_ATTN_ON;
   break;
  case 2:
   slot_cmd = SET_ATTN_BLINK;
   break;
  default:
   return -1;
 }

 return shpc_write_cmd(slot, slot->hp_slot, slot_cmd);
}
