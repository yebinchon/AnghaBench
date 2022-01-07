
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
typedef int u16 ;
struct TYPE_3__ {scalar_t__ (* acquire_swfw_sync ) (struct ixgbe_hw*,int ) ;int (* release_swfw_sync ) (struct ixgbe_hw*,int ) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ mac; } ;
typedef scalar_t__ s32 ;


 scalar_t__ IXGBE_ERR_SWFW_SYNC ;
 int IXGBE_GSSR_PHY0_SM ;
 int IXGBE_GSSR_PHY1_SM ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_STATUS ;
 int IXGBE_STATUS_LAN_ID_1 ;
 int hw_dbg (struct ixgbe_hw*,char*) ;
 scalar_t__ ixgbe_clock_in_i2c_byte (struct ixgbe_hw*,int*) ;
 scalar_t__ ixgbe_clock_out_i2c_bit (struct ixgbe_hw*,int) ;
 scalar_t__ ixgbe_clock_out_i2c_byte (struct ixgbe_hw*,int) ;
 scalar_t__ ixgbe_get_i2c_ack (struct ixgbe_hw*) ;
 int ixgbe_i2c_bus_clear (struct ixgbe_hw*) ;
 int ixgbe_i2c_start (struct ixgbe_hw*) ;
 int ixgbe_i2c_stop (struct ixgbe_hw*) ;
 int msleep (int) ;
 scalar_t__ stub1 (struct ixgbe_hw*,int ) ;
 int stub2 (struct ixgbe_hw*,int ) ;
 int stub3 (struct ixgbe_hw*,int ) ;

s32 ixgbe_read_i2c_byte_generic(struct ixgbe_hw *hw, u8 byte_offset,
                                u8 dev_addr, u8 *data)
{
 s32 status = 0;
 u32 max_retry = 10;
 u32 retry = 0;
 u16 swfw_mask = 0;
 bool nack = 1;
 *data = 0;

 if (IXGBE_READ_REG(hw, IXGBE_STATUS) & IXGBE_STATUS_LAN_ID_1)
  swfw_mask = IXGBE_GSSR_PHY1_SM;
 else
  swfw_mask = IXGBE_GSSR_PHY0_SM;

 do {
  if (hw->mac.ops.acquire_swfw_sync(hw, swfw_mask) != 0) {
   status = IXGBE_ERR_SWFW_SYNC;
   goto read_byte_out;
  }

  ixgbe_i2c_start(hw);


  status = ixgbe_clock_out_i2c_byte(hw, dev_addr);
  if (status != 0)
   goto fail;

  status = ixgbe_get_i2c_ack(hw);
  if (status != 0)
   goto fail;

  status = ixgbe_clock_out_i2c_byte(hw, byte_offset);
  if (status != 0)
   goto fail;

  status = ixgbe_get_i2c_ack(hw);
  if (status != 0)
   goto fail;

  ixgbe_i2c_start(hw);


  status = ixgbe_clock_out_i2c_byte(hw, (dev_addr | 0x1));
  if (status != 0)
   goto fail;

  status = ixgbe_get_i2c_ack(hw);
  if (status != 0)
   goto fail;

  status = ixgbe_clock_in_i2c_byte(hw, data);
  if (status != 0)
   goto fail;

  status = ixgbe_clock_out_i2c_bit(hw, nack);
  if (status != 0)
   goto fail;

  ixgbe_i2c_stop(hw);
  break;

fail:
  ixgbe_i2c_bus_clear(hw);
  hw->mac.ops.release_swfw_sync(hw, swfw_mask);
  msleep(100);
  retry++;
  if (retry < max_retry)
   hw_dbg(hw, "I2C byte read error - Retrying.\n");
  else
   hw_dbg(hw, "I2C byte read error.\n");

 } while (retry < max_retry);

 hw->mac.ops.release_swfw_sync(hw, swfw_mask);

read_byte_out:
 return status;
}
