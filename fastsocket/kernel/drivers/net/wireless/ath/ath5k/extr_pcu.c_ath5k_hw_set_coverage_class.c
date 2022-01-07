
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ath5k_hw {int ah_coverage_class; } ;


 int ath5k_hw_get_default_sifs (struct ath5k_hw*) ;
 int ath5k_hw_get_default_slottime (struct ath5k_hw*) ;
 int ath5k_hw_set_ack_timeout (struct ath5k_hw*,int) ;
 int ath5k_hw_set_cts_timeout (struct ath5k_hw*,int) ;
 int ath5k_hw_set_ifs_intervals (struct ath5k_hw*,int) ;

void
ath5k_hw_set_coverage_class(struct ath5k_hw *ah, u8 coverage_class)
{

 int slot_time = ath5k_hw_get_default_slottime(ah) + 3 * coverage_class;
 int ack_timeout = ath5k_hw_get_default_sifs(ah) + slot_time;
 int cts_timeout = ack_timeout;

 ath5k_hw_set_ifs_intervals(ah, slot_time);
 ath5k_hw_set_ack_timeout(ah, ack_timeout);
 ath5k_hw_set_cts_timeout(ah, cts_timeout);

 ah->ah_coverage_class = coverage_class;
}
