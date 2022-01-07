
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {void* rx; void* tx; scalar_t__ rx_chain_num; scalar_t__ tx_chain_num; } ;
struct rt2x00_dev {int led_mcu_reg; int cap_flags; int led_qual; int led_assoc; int led_radio; scalar_t__ freq_offset; TYPE_1__ default_ant; } ;


 void* ANTENNA_A ;
 void* ANTENNA_B ;
 void* ANTENNA_HW_DIVERSITY ;
 int CAPABILITY_BT_COEXIST ;
 int CAPABILITY_EXTERNAL_LNA_A ;
 int CAPABILITY_EXTERNAL_LNA_BG ;
 int CAPABILITY_HW_BUTTON ;
 int CAPABILITY_POWER_LIMIT ;
 int EEPROM_CHIP_ID ;
 int EEPROM_EIRP_MAX_TX_POWER ;
 int EEPROM_EIRP_MAX_TX_POWER_2GHZ ;
 int EEPROM_FREQ ;
 int EEPROM_FREQ_OFFSET ;
 int EEPROM_NIC_CONF0 ;
 int EEPROM_NIC_CONF0_RF_TYPE ;
 int EEPROM_NIC_CONF0_RXPATH ;
 int EEPROM_NIC_CONF0_TXPATH ;
 int EEPROM_NIC_CONF1 ;
 int EEPROM_NIC_CONF1_ANT_DIVERSITY ;
 int EEPROM_NIC_CONF1_BT_COEXIST ;
 int EEPROM_NIC_CONF1_EXTERNAL_LNA_2G ;
 int EEPROM_NIC_CONF1_EXTERNAL_LNA_5G ;
 int EEPROM_NIC_CONF1_HW_RADIO ;
 scalar_t__ EIRP_MAX_TX_POWER_LIMIT ;
 int ENODEV ;
 int LED_TYPE_ASSOC ;
 int LED_TYPE_QUALITY ;
 int LED_TYPE_RADIO ;
 int REV_RT5390R ;
 int RT3070 ;
 int RT3090 ;
 int RT3290 ;
 int RT3352 ;
 int RT3390 ;
 int RT5390 ;
 int RT5392 ;
 int __set_bit (int ,int *) ;
 int rt2800_init_led (struct rt2x00_dev*,int *,int ) ;
 int rt2x00_eeprom_read (struct rt2x00_dev*,int ,int*) ;
 int rt2x00_err (struct rt2x00_dev*,char*,int) ;
 scalar_t__ rt2x00_get_field16 (int,int ) ;
 scalar_t__ rt2x00_rt (struct rt2x00_dev*,int ) ;
 scalar_t__ rt2x00_rt_rev_gte (struct rt2x00_dev*,int ,int ) ;
 int rt2x00_set_rf (struct rt2x00_dev*,int) ;

__attribute__((used)) static int rt2800_init_eeprom(struct rt2x00_dev *rt2x00dev)
{
 u16 value;
 u16 eeprom;
 u16 rf;




 rt2x00_eeprom_read(rt2x00dev, EEPROM_NIC_CONF0, &eeprom);






 if (rt2x00_rt(rt2x00dev, RT3290) ||
     rt2x00_rt(rt2x00dev, RT5390) ||
     rt2x00_rt(rt2x00dev, RT5392))
  rt2x00_eeprom_read(rt2x00dev, EEPROM_CHIP_ID, &rf);
 else
  rf = rt2x00_get_field16(eeprom, EEPROM_NIC_CONF0_RF_TYPE);

 switch (rf) {
 case 142:
 case 141:
 case 144:
 case 143:
 case 140:
 case 145:
 case 139:
 case 138:
 case 137:
 case 136:
 case 135:
 case 134:
 case 133:
 case 132:
 case 131:
 case 130:
 case 129:
 case 128:
  break;
 default:
  rt2x00_err(rt2x00dev, "Invalid RF chipset 0x%04x detected\n",
      rf);
  return -ENODEV;
 }

 rt2x00_set_rf(rt2x00dev, rf);




 rt2x00dev->default_ant.tx_chain_num =
     rt2x00_get_field16(eeprom, EEPROM_NIC_CONF0_TXPATH);
 rt2x00dev->default_ant.rx_chain_num =
     rt2x00_get_field16(eeprom, EEPROM_NIC_CONF0_RXPATH);

 rt2x00_eeprom_read(rt2x00dev, EEPROM_NIC_CONF1, &eeprom);

 if (rt2x00_rt(rt2x00dev, RT3070) ||
     rt2x00_rt(rt2x00dev, RT3090) ||
     rt2x00_rt(rt2x00dev, RT3352) ||
     rt2x00_rt(rt2x00dev, RT3390)) {
  value = rt2x00_get_field16(eeprom,
    EEPROM_NIC_CONF1_ANT_DIVERSITY);
  switch (value) {
  case 0:
  case 1:
  case 2:
   rt2x00dev->default_ant.tx = ANTENNA_A;
   rt2x00dev->default_ant.rx = ANTENNA_A;
   break;
  case 3:
   rt2x00dev->default_ant.tx = ANTENNA_A;
   rt2x00dev->default_ant.rx = ANTENNA_B;
   break;
  }
 } else {
  rt2x00dev->default_ant.tx = ANTENNA_A;
  rt2x00dev->default_ant.rx = ANTENNA_A;
 }

 if (rt2x00_rt_rev_gte(rt2x00dev, RT5390, REV_RT5390R)) {
  rt2x00dev->default_ant.tx = ANTENNA_HW_DIVERSITY;
  rt2x00dev->default_ant.rx = ANTENNA_HW_DIVERSITY;
 }




 if (rt2x00_get_field16(eeprom, EEPROM_NIC_CONF1_EXTERNAL_LNA_5G))
  __set_bit(CAPABILITY_EXTERNAL_LNA_A, &rt2x00dev->cap_flags);
 if (rt2x00_get_field16(eeprom, EEPROM_NIC_CONF1_EXTERNAL_LNA_2G))
  __set_bit(CAPABILITY_EXTERNAL_LNA_BG, &rt2x00dev->cap_flags);




 if (rt2x00_get_field16(eeprom, EEPROM_NIC_CONF1_HW_RADIO))
  __set_bit(CAPABILITY_HW_BUTTON, &rt2x00dev->cap_flags);




 if (rt2x00_get_field16(eeprom, EEPROM_NIC_CONF1_BT_COEXIST))
  __set_bit(CAPABILITY_BT_COEXIST, &rt2x00dev->cap_flags);




 rt2x00_eeprom_read(rt2x00dev, EEPROM_FREQ, &eeprom);
 rt2x00dev->freq_offset = rt2x00_get_field16(eeprom, EEPROM_FREQ_OFFSET);
 rt2x00_eeprom_read(rt2x00dev, EEPROM_EIRP_MAX_TX_POWER, &eeprom);

 if (rt2x00_get_field16(eeprom, EEPROM_EIRP_MAX_TX_POWER_2GHZ) <
     EIRP_MAX_TX_POWER_LIMIT)
  __set_bit(CAPABILITY_POWER_LIMIT, &rt2x00dev->cap_flags);

 return 0;
}
