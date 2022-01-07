
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u32 ;
typedef size_t u16 ;
struct tc_bw_alloc {size_t bwg_id; size_t bwg_percent; size_t link_percent; size_t data_credits_refill; size_t data_credits_max; } ;
struct TYPE_3__ {scalar_t__ type; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
struct ixgbe_dcb_config {size_t** bw_percentage; TYPE_2__* tc_config; } ;
typedef int s32 ;
struct TYPE_4__ {size_t desc_credits_max; struct tc_bw_alloc* path; } ;


 int DCB_CREDIT_QUANTUM ;
 int DCB_ERR_CONFIG ;
 size_t DCB_TX_CONFIG ;
 size_t MAX_CREDIT ;
 int MAX_CREDIT_REFILL ;
 size_t MAX_TRAFFIC_CLASS ;
 int MINIMUM_CREDIT_FOR_TSO ;
 scalar_t__ ixgbe_mac_82598EB ;
 int min (size_t,int ) ;

s32 ixgbe_dcb_calculate_tc_credits(struct ixgbe_hw *hw,
       struct ixgbe_dcb_config *dcb_config,
       int max_frame, u8 direction)
{
 struct tc_bw_alloc *p;
 int min_credit;
 int min_multiplier;
 int min_percent = 100;
 s32 ret_val = 0;

 u32 credit_refill = 0;
 u32 credit_max = 0;
 u16 link_percentage = 0;
 u8 bw_percent = 0;
 u8 i;

 if (dcb_config == ((void*)0)) {
  ret_val = DCB_ERR_CONFIG;
  goto out;
 }

 min_credit = ((max_frame / 2) + DCB_CREDIT_QUANTUM - 1) /
   DCB_CREDIT_QUANTUM;


 for (i = 0; i < MAX_TRAFFIC_CLASS; i++) {
  p = &dcb_config->tc_config[i].path[direction];
  bw_percent = dcb_config->bw_percentage[direction][p->bwg_id];
  link_percentage = p->bwg_percent;

  link_percentage = (link_percentage * bw_percent) / 100;

  if (link_percentage && link_percentage < min_percent)
   min_percent = link_percentage;
 }
 min_multiplier = (min_credit / min_percent) + 1;


 for (i = 0; i < MAX_TRAFFIC_CLASS; i++) {
  p = &dcb_config->tc_config[i].path[direction];
  bw_percent = dcb_config->bw_percentage[direction][p->bwg_id];

  link_percentage = p->bwg_percent;

  link_percentage = (link_percentage * bw_percent) / 100;
  if (p->bwg_percent > 0 && link_percentage == 0)
   link_percentage = 1;


  p->link_percent = (u8)link_percentage;


  credit_refill = min(link_percentage * min_multiplier,
        MAX_CREDIT_REFILL);
  p->data_credits_refill = (u16)credit_refill;


  credit_max = (link_percentage * MAX_CREDIT) / 100;






  if (credit_max && (credit_max < min_credit))
   credit_max = min_credit;

  if (direction == DCB_TX_CONFIG) {






   if ((hw->mac.type == ixgbe_mac_82598EB) &&
       credit_max &&
       (credit_max < MINIMUM_CREDIT_FOR_TSO))
    credit_max = MINIMUM_CREDIT_FOR_TSO;

   dcb_config->tc_config[i].desc_credits_max =
    (u16)credit_max;
  }

  p->data_credits_max = (u16)credit_max;
 }

out:
 return ret_val;
}
