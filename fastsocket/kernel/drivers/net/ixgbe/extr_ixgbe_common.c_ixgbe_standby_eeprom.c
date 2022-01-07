
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ixgbe_hw {int dummy; } ;


 int IXGBE_EEC ;
 int IXGBE_EEC_CS ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_WRITE_FLUSH (struct ixgbe_hw*) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int ) ;
 int udelay (int) ;

__attribute__((used)) static void ixgbe_standby_eeprom(struct ixgbe_hw *hw)
{
 u32 eec;

 eec = IXGBE_READ_REG(hw, IXGBE_EEC);


 eec |= IXGBE_EEC_CS;
 IXGBE_WRITE_REG(hw, IXGBE_EEC, eec);
 IXGBE_WRITE_FLUSH(hw);
 udelay(1);
 eec &= ~IXGBE_EEC_CS;
 IXGBE_WRITE_REG(hw, IXGBE_EEC, eec);
 IXGBE_WRITE_FLUSH(hw);
 udelay(1);
}
