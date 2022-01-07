
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ENXIO ;
 int VIDCH1CLK ;
 int VPIF_INPUT_ONE_CHANNEL ;
 int VPIF_INPUT_TWO_CHANNEL ;
 int __raw_readl (int ) ;
 int __raw_writel (int ,int ) ;
 int cpld_client ;
 int i2c_smbus_read_byte (int ) ;
 int i2c_smbus_write_byte (int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int vpif_reg_lock ;
 int vpif_vsclkdis_reg ;

__attribute__((used)) static int setup_vpif_input_channel_mode(int mux_mode)
{
 unsigned long flags;
 int err = 0;
 int val;
 u32 value;

 if (!vpif_vsclkdis_reg || !cpld_client)
  return -ENXIO;

 val = i2c_smbus_read_byte(cpld_client);
 if (val < 0)
  return val;

 spin_lock_irqsave(&vpif_reg_lock, flags);
 value = __raw_readl(vpif_vsclkdis_reg);
 if (mux_mode) {
  val &= VPIF_INPUT_TWO_CHANNEL;
  value |= VIDCH1CLK;
 } else {
  val |= VPIF_INPUT_ONE_CHANNEL;
  value &= ~VIDCH1CLK;
 }
 __raw_writel(value, vpif_vsclkdis_reg);
 spin_unlock_irqrestore(&vpif_reg_lock, flags);

 err = i2c_smbus_write_byte(cpld_client, val);
 if (err)
  return err;

 return 0;
}
