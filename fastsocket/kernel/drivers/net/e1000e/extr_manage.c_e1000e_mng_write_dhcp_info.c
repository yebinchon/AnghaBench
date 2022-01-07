
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct e1000_hw {int dummy; } ;
struct e1000_host_mng_command_header {scalar_t__ checksum; scalar_t__ reserved2; scalar_t__ reserved1; int command_length; int command_id; } ;
typedef scalar_t__ s32 ;
typedef int hdr ;


 int E1000_HICR_C ;
 int E1000_MNG_DHCP_TX_PAYLOAD_CMD ;
 int HICR ;
 scalar_t__ e1000_mng_enable_host_if (struct e1000_hw*) ;
 scalar_t__ e1000_mng_host_if_write (struct e1000_hw*,int *,int ,int,scalar_t__*) ;
 scalar_t__ e1000_mng_write_cmd_header (struct e1000_hw*,struct e1000_host_mng_command_header*) ;
 int er32 (int ) ;
 int ew32 (int ,int) ;

s32 e1000e_mng_write_dhcp_info(struct e1000_hw *hw, u8 *buffer, u16 length)
{
 struct e1000_host_mng_command_header hdr;
 s32 ret_val;
 u32 hicr;

 hdr.command_id = E1000_MNG_DHCP_TX_PAYLOAD_CMD;
 hdr.command_length = length;
 hdr.reserved1 = 0;
 hdr.reserved2 = 0;
 hdr.checksum = 0;


 ret_val = e1000_mng_enable_host_if(hw);
 if (ret_val)
  return ret_val;


 ret_val = e1000_mng_host_if_write(hw, buffer, length,
       sizeof(hdr), &(hdr.checksum));
 if (ret_val)
  return ret_val;


 ret_val = e1000_mng_write_cmd_header(hw, &hdr);
 if (ret_val)
  return ret_val;


 hicr = er32(HICR);
 ew32(HICR, hicr | E1000_HICR_C);

 return 0;
}
