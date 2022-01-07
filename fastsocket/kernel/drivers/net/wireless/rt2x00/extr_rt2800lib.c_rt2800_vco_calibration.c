
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_4__ {int tx_chain_num; } ;
struct TYPE_3__ {int rf; } ;
struct rt2x00_dev {int rf_channel; TYPE_2__ default_ant; TYPE_1__ chip; } ;
 int RFCSR3_VCOCAL_EN ;
 int RFCSR7_RF_TUNING ;
 int TX_PIN_CFG ;
 int TX_PIN_CFG_PA_PE_A0_EN ;
 int TX_PIN_CFG_PA_PE_A1_EN ;
 int TX_PIN_CFG_PA_PE_A2_EN ;
 int TX_PIN_CFG_PA_PE_DISABLE ;
 int TX_PIN_CFG_PA_PE_G0_EN ;
 int TX_PIN_CFG_PA_PE_G1_EN ;
 int TX_PIN_CFG_PA_PE_G2_EN ;
 int mdelay (int) ;
 int rt2800_register_read (struct rt2x00_dev*,int ,int *) ;
 int rt2800_register_write (struct rt2x00_dev*,int ,int ) ;
 int rt2800_rfcsr_read (struct rt2x00_dev*,int,int *) ;
 int rt2800_rfcsr_write (struct rt2x00_dev*,int,int ) ;
 int rt2x00_set_field32 (int *,int ,int) ;
 int rt2x00_set_field8 (int *,int ,int) ;

void rt2800_vco_calibration(struct rt2x00_dev *rt2x00dev)
{
 u32 tx_pin;
 u8 rfcsr;
 rt2800_register_read(rt2x00dev, TX_PIN_CFG, &tx_pin);
 tx_pin &= TX_PIN_CFG_PA_PE_DISABLE;
 rt2800_register_write(rt2x00dev, TX_PIN_CFG, tx_pin);

 switch (rt2x00dev->chip.rf) {
 case 139:
 case 138:
 case 137:
 case 136:
 case 133:
 case 135:
  rt2800_rfcsr_read(rt2x00dev, 7, &rfcsr);
  rt2x00_set_field8(&rfcsr, RFCSR7_RF_TUNING, 1);
  rt2800_rfcsr_write(rt2x00dev, 7, rfcsr);
  break;
 case 134:
 case 132:
 case 131:
 case 130:
 case 129:
 case 128:
  rt2800_rfcsr_read(rt2x00dev, 3, &rfcsr);
  rt2x00_set_field8(&rfcsr, RFCSR3_VCOCAL_EN, 1);
  rt2800_rfcsr_write(rt2x00dev, 3, rfcsr);
  break;
 default:
  return;
 }

 mdelay(1);

 rt2800_register_read(rt2x00dev, TX_PIN_CFG, &tx_pin);
 if (rt2x00dev->rf_channel <= 14) {
  switch (rt2x00dev->default_ant.tx_chain_num) {
  case 3:
   rt2x00_set_field32(&tx_pin, TX_PIN_CFG_PA_PE_G2_EN, 1);

  case 2:
   rt2x00_set_field32(&tx_pin, TX_PIN_CFG_PA_PE_G1_EN, 1);

  case 1:
  default:
   rt2x00_set_field32(&tx_pin, TX_PIN_CFG_PA_PE_G0_EN, 1);
   break;
  }
 } else {
  switch (rt2x00dev->default_ant.tx_chain_num) {
  case 3:
   rt2x00_set_field32(&tx_pin, TX_PIN_CFG_PA_PE_A2_EN, 1);

  case 2:
   rt2x00_set_field32(&tx_pin, TX_PIN_CFG_PA_PE_A1_EN, 1);

  case 1:
  default:
   rt2x00_set_field32(&tx_pin, TX_PIN_CFG_PA_PE_A0_EN, 1);
   break;
  }
 }
 rt2800_register_write(rt2x00dev, TX_PIN_CFG, tx_pin);

}
