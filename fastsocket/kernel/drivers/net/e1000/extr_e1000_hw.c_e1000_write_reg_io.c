
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_hw {unsigned long io_base; } ;


 int e1000_io_write (struct e1000_hw*,unsigned long,int ) ;

__attribute__((used)) static void e1000_write_reg_io(struct e1000_hw *hw, u32 offset, u32 value)
{
 unsigned long io_addr = hw->io_base;
 unsigned long io_data = hw->io_base + 4;

 e1000_io_write(hw, io_addr, offset);
 e1000_io_write(hw, io_data, value);
}
