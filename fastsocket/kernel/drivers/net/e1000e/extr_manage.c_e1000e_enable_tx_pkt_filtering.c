
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_3__ {int (* check_mng_mode ) (struct e1000_hw*) ;} ;
struct TYPE_4__ {int tx_pkt_filtering; TYPE_1__ ops; } ;
struct e1000_host_mng_dhcp_cookie {scalar_t__ checksum; scalar_t__ signature; int status; } ;
struct e1000_hw {TYPE_2__ mac; struct e1000_host_mng_dhcp_cookie mng_cookie; } ;
typedef scalar_t__ s32 ;


 int E1000_HOST_IF ;
 scalar_t__ E1000_IAMT_SIGNATURE ;
 int E1000_MNG_DHCP_COOKIE_LENGTH ;
 int E1000_MNG_DHCP_COOKIE_OFFSET ;
 int E1000_MNG_DHCP_COOKIE_STATUS_PARSING ;
 int E1000_READ_REG_ARRAY (struct e1000_hw*,int ,int) ;
 scalar_t__ e1000_calculate_checksum (int*,int) ;
 scalar_t__ e1000_mng_enable_host_if (struct e1000_hw*) ;
 int stub1 (struct e1000_hw*) ;

bool e1000e_enable_tx_pkt_filtering(struct e1000_hw *hw)
{
 struct e1000_host_mng_dhcp_cookie *hdr = &hw->mng_cookie;
 u32 *buffer = (u32 *)&hw->mng_cookie;
 u32 offset;
 s32 ret_val, hdr_csum, csum;
 u8 i, len;

 hw->mac.tx_pkt_filtering = 1;


 if (!hw->mac.ops.check_mng_mode(hw)) {
  hw->mac.tx_pkt_filtering = 0;
  return hw->mac.tx_pkt_filtering;
 }




 ret_val = e1000_mng_enable_host_if(hw);
 if (ret_val) {
  hw->mac.tx_pkt_filtering = 0;
  return hw->mac.tx_pkt_filtering;
 }


 len = E1000_MNG_DHCP_COOKIE_LENGTH >> 2;
 offset = E1000_MNG_DHCP_COOKIE_OFFSET >> 2;
 for (i = 0; i < len; i++)
  *(buffer + i) = E1000_READ_REG_ARRAY(hw, E1000_HOST_IF,
           offset + i);
 hdr_csum = hdr->checksum;
 hdr->checksum = 0;
 csum = e1000_calculate_checksum((u8 *)hdr,
     E1000_MNG_DHCP_COOKIE_LENGTH);




 if ((hdr_csum != csum) || (hdr->signature != E1000_IAMT_SIGNATURE)) {
  hw->mac.tx_pkt_filtering = 1;
  return hw->mac.tx_pkt_filtering;
 }


 if (!(hdr->status & E1000_MNG_DHCP_COOKIE_STATUS_PARSING))
  hw->mac.tx_pkt_filtering = 0;

 return hw->mac.tx_pkt_filtering;
}
