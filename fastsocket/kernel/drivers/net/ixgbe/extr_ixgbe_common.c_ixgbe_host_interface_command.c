
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct ixgbe_hw {int dummy; } ;
struct ixgbe_hic_hdr {scalar_t__ buf_len; } ;
typedef int s32 ;


 int IXGBE_ERR_HOST_INTERFACE_COMMAND ;
 int IXGBE_FLEX_MNG ;
 int IXGBE_HICR ;
 scalar_t__ IXGBE_HICR_C ;
 scalar_t__ IXGBE_HICR_EN ;
 scalar_t__ IXGBE_HICR_SV ;
 scalar_t__ IXGBE_HI_COMMAND_TIMEOUT ;
 scalar_t__ IXGBE_HI_MAX_BLOCK_BYTE_LENGTH ;
 scalar_t__ IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 scalar_t__ IXGBE_READ_REG_ARRAY (struct ixgbe_hw*,int ,scalar_t__) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,scalar_t__) ;
 int IXGBE_WRITE_REG_ARRAY (struct ixgbe_hw*,int ,scalar_t__,int ) ;
 int cpu_to_le32 (scalar_t__) ;
 int hw_dbg (struct ixgbe_hw*,char*) ;
 int le32_to_cpus (scalar_t__*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static s32 ixgbe_host_interface_command(struct ixgbe_hw *hw, u32 *buffer,
     u32 length)
{
 u32 hicr, i, bi;
 u32 hdr_size = sizeof(struct ixgbe_hic_hdr);
 u8 buf_len, dword_len;

 s32 ret_val = 0;

 if (length == 0 || length & 0x3 ||
     length > IXGBE_HI_MAX_BLOCK_BYTE_LENGTH) {
  hw_dbg(hw, "Buffer length failure.\n");
  ret_val = IXGBE_ERR_HOST_INTERFACE_COMMAND;
  goto out;
 }


 hicr = IXGBE_READ_REG(hw, IXGBE_HICR);
 if ((hicr & IXGBE_HICR_EN) == 0) {
  hw_dbg(hw, "IXGBE_HOST_EN bit disabled.\n");
  ret_val = IXGBE_ERR_HOST_INTERFACE_COMMAND;
  goto out;
 }


 dword_len = length >> 2;





 for (i = 0; i < dword_len; i++)
  IXGBE_WRITE_REG_ARRAY(hw, IXGBE_FLEX_MNG,
          i, cpu_to_le32(buffer[i]));


 IXGBE_WRITE_REG(hw, IXGBE_HICR, hicr | IXGBE_HICR_C);

 for (i = 0; i < IXGBE_HI_COMMAND_TIMEOUT; i++) {
  hicr = IXGBE_READ_REG(hw, IXGBE_HICR);
  if (!(hicr & IXGBE_HICR_C))
   break;
  usleep_range(1000, 2000);
 }


 if (i == IXGBE_HI_COMMAND_TIMEOUT ||
     (!(IXGBE_READ_REG(hw, IXGBE_HICR) & IXGBE_HICR_SV))) {
  hw_dbg(hw, "Command has failed with no status valid.\n");
  ret_val = IXGBE_ERR_HOST_INTERFACE_COMMAND;
  goto out;
 }


 dword_len = hdr_size >> 2;


 for (bi = 0; bi < dword_len; bi++) {
  buffer[bi] = IXGBE_READ_REG_ARRAY(hw, IXGBE_FLEX_MNG, bi);
  le32_to_cpus(&buffer[bi]);
 }


 buf_len = ((struct ixgbe_hic_hdr *)buffer)->buf_len;
 if (buf_len == 0)
  goto out;

 if (length < (buf_len + hdr_size)) {
  hw_dbg(hw, "Buffer not large enough for reply message.\n");
  ret_val = IXGBE_ERR_HOST_INTERFACE_COMMAND;
  goto out;
 }


 dword_len = (buf_len + 3) >> 2;


 for (; bi <= dword_len; bi++) {
  buffer[bi] = IXGBE_READ_REG_ARRAY(hw, IXGBE_FLEX_MNG, bi);
  le32_to_cpus(&buffer[bi]);
 }

out:
 return ret_val;
}
