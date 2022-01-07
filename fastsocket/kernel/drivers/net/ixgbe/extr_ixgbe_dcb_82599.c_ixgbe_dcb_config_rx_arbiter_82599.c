
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef size_t u32 ;
typedef size_t u16 ;
struct ixgbe_hw {int dummy; } ;
typedef int s32 ;


 int IXGBE_RTRPCS ;
 size_t IXGBE_RTRPCS_ARBDIS ;
 size_t IXGBE_RTRPCS_RAC ;
 size_t IXGBE_RTRPCS_RRM ;
 int IXGBE_RTRPT4C (size_t) ;
 size_t IXGBE_RTRPT4C_BWG_SHIFT ;
 size_t IXGBE_RTRPT4C_LSP ;
 size_t IXGBE_RTRPT4C_MCL_SHIFT ;
 int IXGBE_RTRUP2TC ;
 size_t IXGBE_RTRUP2TC_UP_SHIFT ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,size_t) ;
 size_t MAX_TRAFFIC_CLASS ;
 size_t MAX_USER_PRIORITY ;
 size_t prio_link ;

s32 ixgbe_dcb_config_rx_arbiter_82599(struct ixgbe_hw *hw,
          u16 *refill,
          u16 *max,
          u8 *bwg_id,
          u8 *prio_type,
          u8 *prio_tc)
{
 u32 reg = 0;
 u32 credit_refill = 0;
 u32 credit_max = 0;
 u8 i = 0;





 reg = IXGBE_RTRPCS_RRM | IXGBE_RTRPCS_RAC | IXGBE_RTRPCS_ARBDIS;
 IXGBE_WRITE_REG(hw, IXGBE_RTRPCS, reg);


 reg = 0;
 for (i = 0; i < MAX_USER_PRIORITY; i++)
  reg |= (prio_tc[i] << (i * IXGBE_RTRUP2TC_UP_SHIFT));
 IXGBE_WRITE_REG(hw, IXGBE_RTRUP2TC, reg);


 for (i = 0; i < MAX_TRAFFIC_CLASS; i++) {
  credit_refill = refill[i];
  credit_max = max[i];
  reg = credit_refill | (credit_max << IXGBE_RTRPT4C_MCL_SHIFT);

  reg |= (u32)(bwg_id[i]) << IXGBE_RTRPT4C_BWG_SHIFT;

  if (prio_type[i] == prio_link)
   reg |= IXGBE_RTRPT4C_LSP;

  IXGBE_WRITE_REG(hw, IXGBE_RTRPT4C(i), reg);
 }





 reg = IXGBE_RTRPCS_RRM | IXGBE_RTRPCS_RAC;
 IXGBE_WRITE_REG(hw, IXGBE_RTRPCS, reg);

 return 0;
}
