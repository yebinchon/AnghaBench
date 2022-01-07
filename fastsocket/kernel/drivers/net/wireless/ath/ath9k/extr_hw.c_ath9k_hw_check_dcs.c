
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static bool ath9k_hw_check_dcs(u32 dma_dbg, u32 num_dcu_states,
          int *hang_state, int *hang_pos)
{
 static u32 dcu_chain_state[] = {5, 6, 9};
 u32 chain_state, dcs_pos, i;

 for (dcs_pos = 0; dcs_pos < num_dcu_states; dcs_pos++) {
  chain_state = (dma_dbg >> (5 * dcs_pos)) & 0x1f;
  for (i = 0; i < 3; i++) {
   if (chain_state == dcu_chain_state[i]) {
    *hang_state = chain_state;
    *hang_pos = dcs_pos;
    return 1;
   }
  }
 }
 return 0;
}
