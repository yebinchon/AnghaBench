
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath5k_rx_status {int rs_status; int rs_phyerr; scalar_t__ rs_keyix; int rs_more; scalar_t__ rs_datalen; } ;
struct TYPE_2__ {int rxerr_jumbo; int rxerr_mic; int rxerr_decrypt; int * rxerr_phy_code; int rxerr_phy; int rxerr_fifo; int rxerr_crc; int rx_bytes_count; int rx_all_count; } ;
struct ath5k_hw {TYPE_1__ stats; } ;


 int AR5K_RXERR_CRC ;
 int AR5K_RXERR_DECRYPT ;
 int AR5K_RXERR_FIFO ;
 int AR5K_RXERR_MIC ;
 int AR5K_RXERR_PHY ;
 scalar_t__ AR5K_RXKEYIX_INVALID ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static bool
ath5k_receive_frame_ok(struct ath5k_hw *ah, struct ath5k_rx_status *rs)
{
 ah->stats.rx_all_count++;
 ah->stats.rx_bytes_count += rs->rs_datalen;

 if (unlikely(rs->rs_status)) {
  if (rs->rs_status & AR5K_RXERR_CRC)
   ah->stats.rxerr_crc++;
  if (rs->rs_status & AR5K_RXERR_FIFO)
   ah->stats.rxerr_fifo++;
  if (rs->rs_status & AR5K_RXERR_PHY) {
   ah->stats.rxerr_phy++;
   if (rs->rs_phyerr > 0 && rs->rs_phyerr < 32)
    ah->stats.rxerr_phy_code[rs->rs_phyerr]++;
   return 0;
  }
  if (rs->rs_status & AR5K_RXERR_DECRYPT) {
   ah->stats.rxerr_decrypt++;
   if (rs->rs_keyix == AR5K_RXKEYIX_INVALID &&
       !(rs->rs_status & AR5K_RXERR_CRC))
    return 1;
  }
  if (rs->rs_status & AR5K_RXERR_MIC) {
   ah->stats.rxerr_mic++;
   return 1;
  }


  if (rs->rs_status & ~(AR5K_RXERR_DECRYPT))
   return 0;
 }

 if (unlikely(rs->rs_more)) {
  ah->stats.rxerr_jumbo++;
  return 0;
 }
 return 1;
}
