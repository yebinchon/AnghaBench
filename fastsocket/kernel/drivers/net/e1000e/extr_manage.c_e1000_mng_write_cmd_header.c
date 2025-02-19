
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct e1000_hw {int dummy; } ;
struct e1000_host_mng_command_header {int checksum; } ;
typedef int s32 ;


 int E1000_HOST_IF ;
 int E1000_WRITE_REG_ARRAY (struct e1000_hw*,int ,int,int ) ;
 int e1000_calculate_checksum (int *,int) ;
 int e1e_flush () ;

__attribute__((used)) static s32 e1000_mng_write_cmd_header(struct e1000_hw *hw,
          struct e1000_host_mng_command_header *hdr)
{
 u16 i, length = sizeof(struct e1000_host_mng_command_header);



 hdr->checksum = e1000_calculate_checksum((u8 *)hdr, length);

 length >>= 2;

 for (i = 0; i < length; i++) {
  E1000_WRITE_REG_ARRAY(hw, E1000_HOST_IF, i, *((u32 *)hdr + i));
  e1e_flush();
 }

 return 0;
}
