
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u64 ;
typedef int u32 ;
struct e1000_hw_stats {int gorcl; scalar_t__ roc; int prc1522; int prc1023; int prc511; int prc255; int prc127; int prc64; int mprc; int bprc; int gorch; int gprc; int crcerrs; } ;
struct e1000_hw {int max_frame_size; } ;



void e1000_tbi_adjust_stats(struct e1000_hw *hw, struct e1000_hw_stats *stats,
       u32 frame_len, u8 *mac_addr)
{
 u64 carry_bit;


 frame_len--;





 stats->crcerrs--;

 stats->gprc++;


 carry_bit = 0x80000000 & stats->gorcl;
 stats->gorcl += frame_len;







 if (carry_bit && ((stats->gorcl & 0x80000000) == 0))
  stats->gorch++;




 if ((mac_addr[0] == (u8) 0xff) && (mac_addr[1] == (u8) 0xff))

  stats->bprc++;
 else if (*mac_addr & 0x01)

  stats->mprc++;

 if (frame_len == hw->max_frame_size) {



  if (stats->roc > 0)
   stats->roc--;
 }




 if (frame_len == 64) {
  stats->prc64++;
  stats->prc127--;
 } else if (frame_len == 127) {
  stats->prc127++;
  stats->prc255--;
 } else if (frame_len == 255) {
  stats->prc255++;
  stats->prc511--;
 } else if (frame_len == 511) {
  stats->prc511++;
  stats->prc1023--;
 } else if (frame_len == 1023) {
  stats->prc1023++;
  stats->prc1522--;
 } else if (frame_len == 1522) {
  stats->prc1522++;
 }
}
