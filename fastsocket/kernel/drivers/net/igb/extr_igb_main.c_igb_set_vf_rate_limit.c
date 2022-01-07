
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_hw {int dummy; } ;


 int E1000_RTTBCNRC ;
 int E1000_RTTBCNRC_RF_DEC_MASK ;
 int E1000_RTTBCNRC_RF_INT_MASK ;
 int E1000_RTTBCNRC_RF_INT_SHIFT ;
 int E1000_RTTBCNRC_RS_ENA ;
 int E1000_RTTBCNRM ;
 int E1000_RTTDQSEL ;
 int wr32 (int ,int) ;

__attribute__((used)) static void igb_set_vf_rate_limit(struct e1000_hw *hw, int vf, int tx_rate,
      int link_speed)
{
 int rf_dec, rf_int;
 u32 bcnrc_val;

 if (tx_rate != 0) {

  rf_int = link_speed / tx_rate;
  rf_dec = (link_speed - (rf_int * tx_rate));
  rf_dec = (rf_dec * (1 << E1000_RTTBCNRC_RF_INT_SHIFT)) /
    tx_rate;

  bcnrc_val = E1000_RTTBCNRC_RS_ENA;
  bcnrc_val |= ((rf_int << E1000_RTTBCNRC_RF_INT_SHIFT) &
         E1000_RTTBCNRC_RF_INT_MASK);
  bcnrc_val |= (rf_dec & E1000_RTTBCNRC_RF_DEC_MASK);
 } else {
  bcnrc_val = 0;
 }

 wr32(E1000_RTTDQSEL, vf);



 wr32(E1000_RTTBCNRM, 0x14);
 wr32(E1000_RTTBCNRC, bcnrc_val);
}
