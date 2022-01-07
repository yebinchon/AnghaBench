
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e1000_hw {int dummy; } ;
struct igb_adapter {struct e1000_hw hw; } ;
typedef int s32 ;


 int E1000_I2CPARAMS ;
 int E1000_I2C_CLK_OE_N ;
 int E1000_I2C_DATA_OE_N ;
 int E1000_I2C_DATA_OUT ;
 int rd32 (int ) ;
 int wr32 (int ,int ) ;
 int wrfl () ;

__attribute__((used)) static void igb_set_i2c_data(void *data, int state)
{
 struct igb_adapter *adapter = (struct igb_adapter *)data;
 struct e1000_hw *hw = &adapter->hw;
 s32 i2cctl = rd32(E1000_I2CPARAMS);

 if (state)
  i2cctl |= E1000_I2C_DATA_OUT;
 else
  i2cctl &= ~E1000_I2C_DATA_OUT;

 i2cctl &= ~E1000_I2C_DATA_OE_N;
 i2cctl |= E1000_I2C_CLK_OE_N;
 wr32(E1000_I2CPARAMS, i2cctl);
 wrfl();

}
