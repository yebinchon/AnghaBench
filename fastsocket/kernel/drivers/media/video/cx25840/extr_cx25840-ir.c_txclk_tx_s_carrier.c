
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct i2c_client {int dummy; } ;


 int CX25840_IR_TXCLK_REG ;
 int carrier_freq_to_clock_divider (unsigned int) ;
 unsigned int clock_divider_to_carrier_freq (int ) ;
 int cx25840_write4 (struct i2c_client*,int ,int ) ;

__attribute__((used)) static unsigned int txclk_tx_s_carrier(struct i2c_client *c,
           unsigned int freq,
           u16 *divider)
{
 *divider = carrier_freq_to_clock_divider(freq);
 cx25840_write4(c, CX25840_IR_TXCLK_REG, *divider);
 return clock_divider_to_carrier_freq(*divider);
}
