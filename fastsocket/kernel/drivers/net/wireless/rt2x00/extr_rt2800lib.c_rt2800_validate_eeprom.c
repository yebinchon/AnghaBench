
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct rt2x00_dev {struct rt2800_drv_data* drv_data; } ;
struct rt2800_drv_data {int txmixer_gain_24g; int txmixer_gain_5g; } ;


 int EEPROM_FREQ ;
 int EEPROM_FREQ_LED_MODE ;
 int EEPROM_FREQ_LED_POLARITY ;
 int EEPROM_FREQ_OFFSET ;
 int EEPROM_LED_ACT_CONF ;
 int EEPROM_LED_AG_CONF ;
 int EEPROM_LED_POLARITY ;
 int EEPROM_LNA ;
 int EEPROM_LNA_A0 ;
 int EEPROM_MAC_ADDR_0 ;
 int EEPROM_NIC_CONF0 ;
 int EEPROM_NIC_CONF0_RF_TYPE ;
 int EEPROM_NIC_CONF0_RXPATH ;
 int EEPROM_NIC_CONF0_TXPATH ;
 int EEPROM_NIC_CONF1 ;
 int EEPROM_NIC_CONF1_ANT_DIVERSITY ;
 int EEPROM_NIC_CONF1_BROADBAND_EXT_LNA ;
 int EEPROM_NIC_CONF1_BT_COEXIST ;
 int EEPROM_NIC_CONF1_BW40M_2G ;
 int EEPROM_NIC_CONF1_BW40M_5G ;
 int EEPROM_NIC_CONF1_BW40M_SB_2G ;
 int EEPROM_NIC_CONF1_BW40M_SB_5G ;
 int EEPROM_NIC_CONF1_CARDBUS_ACCEL ;
 int EEPROM_NIC_CONF1_DAC_TEST ;
 int EEPROM_NIC_CONF1_EXTERNAL_LNA_2G ;
 int EEPROM_NIC_CONF1_EXTERNAL_LNA_5G ;
 int EEPROM_NIC_CONF1_EXTERNAL_TX_ALC ;
 int EEPROM_NIC_CONF1_HW_RADIO ;
 int EEPROM_NIC_CONF1_INTERNAL_TX_ALC ;
 int EEPROM_NIC_CONF1_WPS_PBC ;
 int EEPROM_RSSI_A ;
 int EEPROM_RSSI_A2 ;
 int EEPROM_RSSI_A2_LNA_A2 ;
 int EEPROM_RSSI_A2_OFFSET2 ;
 int EEPROM_RSSI_A_OFFSET0 ;
 int EEPROM_RSSI_A_OFFSET1 ;
 int EEPROM_RSSI_BG ;
 int EEPROM_RSSI_BG2 ;
 int EEPROM_RSSI_BG2_LNA_A1 ;
 int EEPROM_RSSI_BG2_OFFSET2 ;
 int EEPROM_RSSI_BG_OFFSET0 ;
 int EEPROM_RSSI_BG_OFFSET1 ;
 int EEPROM_TXMIXER_GAIN_A ;
 int EEPROM_TXMIXER_GAIN_A_VAL ;
 int EEPROM_TXMIXER_GAIN_BG ;
 int EEPROM_TXMIXER_GAIN_BG_VAL ;
 int LED_MODE_TXRX_ACTIVITY ;
 int RF2820 ;
 int RT2860 ;
 int RT2872 ;
 int abs (int) ;
 int eth_random_addr (int*) ;
 int is_valid_ether_addr (int*) ;
 int rt2800_read_eeprom (struct rt2x00_dev*) ;
 int* rt2x00_eeprom_addr (struct rt2x00_dev*,int ) ;
 int rt2x00_eeprom_dbg (struct rt2x00_dev*,char*,...) ;
 int rt2x00_eeprom_read (struct rt2x00_dev*,int ,int*) ;
 int rt2x00_eeprom_write (struct rt2x00_dev*,int ,int) ;
 int rt2x00_get_field16 (int,int ) ;
 scalar_t__ rt2x00_rt (struct rt2x00_dev*,int ) ;
 int rt2x00_set_field16 (int*,int ,int) ;

__attribute__((used)) static int rt2800_validate_eeprom(struct rt2x00_dev *rt2x00dev)
{
 struct rt2800_drv_data *drv_data = rt2x00dev->drv_data;
 u16 word;
 u8 *mac;
 u8 default_lna_gain;
 int retval;




 retval = rt2800_read_eeprom(rt2x00dev);
 if (retval)
  return retval;




 mac = rt2x00_eeprom_addr(rt2x00dev, EEPROM_MAC_ADDR_0);
 if (!is_valid_ether_addr(mac)) {
  eth_random_addr(mac);
  rt2x00_eeprom_dbg(rt2x00dev, "MAC: %pM\n", mac);
 }

 rt2x00_eeprom_read(rt2x00dev, EEPROM_NIC_CONF0, &word);
 if (word == 0xffff) {
  rt2x00_set_field16(&word, EEPROM_NIC_CONF0_RXPATH, 2);
  rt2x00_set_field16(&word, EEPROM_NIC_CONF0_TXPATH, 1);
  rt2x00_set_field16(&word, EEPROM_NIC_CONF0_RF_TYPE, RF2820);
  rt2x00_eeprom_write(rt2x00dev, EEPROM_NIC_CONF0, word);
  rt2x00_eeprom_dbg(rt2x00dev, "Antenna: 0x%04x\n", word);
 } else if (rt2x00_rt(rt2x00dev, RT2860) ||
     rt2x00_rt(rt2x00dev, RT2872)) {



  if (rt2x00_get_field16(word, EEPROM_NIC_CONF0_RXPATH) > 2)
   rt2x00_set_field16(&word, EEPROM_NIC_CONF0_RXPATH, 2);
  rt2x00_eeprom_write(rt2x00dev, EEPROM_NIC_CONF0, word);
 }

 rt2x00_eeprom_read(rt2x00dev, EEPROM_NIC_CONF1, &word);
 if (word == 0xffff) {
  rt2x00_set_field16(&word, EEPROM_NIC_CONF1_HW_RADIO, 0);
  rt2x00_set_field16(&word, EEPROM_NIC_CONF1_EXTERNAL_TX_ALC, 0);
  rt2x00_set_field16(&word, EEPROM_NIC_CONF1_EXTERNAL_LNA_2G, 0);
  rt2x00_set_field16(&word, EEPROM_NIC_CONF1_EXTERNAL_LNA_5G, 0);
  rt2x00_set_field16(&word, EEPROM_NIC_CONF1_CARDBUS_ACCEL, 0);
  rt2x00_set_field16(&word, EEPROM_NIC_CONF1_BW40M_SB_2G, 0);
  rt2x00_set_field16(&word, EEPROM_NIC_CONF1_BW40M_SB_5G, 0);
  rt2x00_set_field16(&word, EEPROM_NIC_CONF1_WPS_PBC, 0);
  rt2x00_set_field16(&word, EEPROM_NIC_CONF1_BW40M_2G, 0);
  rt2x00_set_field16(&word, EEPROM_NIC_CONF1_BW40M_5G, 0);
  rt2x00_set_field16(&word, EEPROM_NIC_CONF1_BROADBAND_EXT_LNA, 0);
  rt2x00_set_field16(&word, EEPROM_NIC_CONF1_ANT_DIVERSITY, 0);
  rt2x00_set_field16(&word, EEPROM_NIC_CONF1_INTERNAL_TX_ALC, 0);
  rt2x00_set_field16(&word, EEPROM_NIC_CONF1_BT_COEXIST, 0);
  rt2x00_set_field16(&word, EEPROM_NIC_CONF1_DAC_TEST, 0);
  rt2x00_eeprom_write(rt2x00dev, EEPROM_NIC_CONF1, word);
  rt2x00_eeprom_dbg(rt2x00dev, "NIC: 0x%04x\n", word);
 }

 rt2x00_eeprom_read(rt2x00dev, EEPROM_FREQ, &word);
 if ((word & 0x00ff) == 0x00ff) {
  rt2x00_set_field16(&word, EEPROM_FREQ_OFFSET, 0);
  rt2x00_eeprom_write(rt2x00dev, EEPROM_FREQ, word);
  rt2x00_eeprom_dbg(rt2x00dev, "Freq: 0x%04x\n", word);
 }
 if ((word & 0xff00) == 0xff00) {
  rt2x00_set_field16(&word, EEPROM_FREQ_LED_MODE,
       LED_MODE_TXRX_ACTIVITY);
  rt2x00_set_field16(&word, EEPROM_FREQ_LED_POLARITY, 0);
  rt2x00_eeprom_write(rt2x00dev, EEPROM_FREQ, word);
  rt2x00_eeprom_write(rt2x00dev, EEPROM_LED_AG_CONF, 0x5555);
  rt2x00_eeprom_write(rt2x00dev, EEPROM_LED_ACT_CONF, 0x2221);
  rt2x00_eeprom_write(rt2x00dev, EEPROM_LED_POLARITY, 0xa9f8);
  rt2x00_eeprom_dbg(rt2x00dev, "Led Mode: 0x%04x\n", word);
 }






 rt2x00_eeprom_read(rt2x00dev, EEPROM_LNA, &word);
 default_lna_gain = rt2x00_get_field16(word, EEPROM_LNA_A0);

 rt2x00_eeprom_read(rt2x00dev, EEPROM_RSSI_BG, &word);
 if (abs(rt2x00_get_field16(word, EEPROM_RSSI_BG_OFFSET0)) > 10)
  rt2x00_set_field16(&word, EEPROM_RSSI_BG_OFFSET0, 0);
 if (abs(rt2x00_get_field16(word, EEPROM_RSSI_BG_OFFSET1)) > 10)
  rt2x00_set_field16(&word, EEPROM_RSSI_BG_OFFSET1, 0);
 rt2x00_eeprom_write(rt2x00dev, EEPROM_RSSI_BG, word);

 rt2x00_eeprom_read(rt2x00dev, EEPROM_TXMIXER_GAIN_BG, &word);
 if ((word & 0x00ff) != 0x00ff) {
  drv_data->txmixer_gain_24g =
   rt2x00_get_field16(word, EEPROM_TXMIXER_GAIN_BG_VAL);
 } else {
  drv_data->txmixer_gain_24g = 0;
 }

 rt2x00_eeprom_read(rt2x00dev, EEPROM_RSSI_BG2, &word);
 if (abs(rt2x00_get_field16(word, EEPROM_RSSI_BG2_OFFSET2)) > 10)
  rt2x00_set_field16(&word, EEPROM_RSSI_BG2_OFFSET2, 0);
 if (rt2x00_get_field16(word, EEPROM_RSSI_BG2_LNA_A1) == 0x00 ||
     rt2x00_get_field16(word, EEPROM_RSSI_BG2_LNA_A1) == 0xff)
  rt2x00_set_field16(&word, EEPROM_RSSI_BG2_LNA_A1,
       default_lna_gain);
 rt2x00_eeprom_write(rt2x00dev, EEPROM_RSSI_BG2, word);

 rt2x00_eeprom_read(rt2x00dev, EEPROM_TXMIXER_GAIN_A, &word);
 if ((word & 0x00ff) != 0x00ff) {
  drv_data->txmixer_gain_5g =
   rt2x00_get_field16(word, EEPROM_TXMIXER_GAIN_A_VAL);
 } else {
  drv_data->txmixer_gain_5g = 0;
 }

 rt2x00_eeprom_read(rt2x00dev, EEPROM_RSSI_A, &word);
 if (abs(rt2x00_get_field16(word, EEPROM_RSSI_A_OFFSET0)) > 10)
  rt2x00_set_field16(&word, EEPROM_RSSI_A_OFFSET0, 0);
 if (abs(rt2x00_get_field16(word, EEPROM_RSSI_A_OFFSET1)) > 10)
  rt2x00_set_field16(&word, EEPROM_RSSI_A_OFFSET1, 0);
 rt2x00_eeprom_write(rt2x00dev, EEPROM_RSSI_A, word);

 rt2x00_eeprom_read(rt2x00dev, EEPROM_RSSI_A2, &word);
 if (abs(rt2x00_get_field16(word, EEPROM_RSSI_A2_OFFSET2)) > 10)
  rt2x00_set_field16(&word, EEPROM_RSSI_A2_OFFSET2, 0);
 if (rt2x00_get_field16(word, EEPROM_RSSI_A2_LNA_A2) == 0x00 ||
     rt2x00_get_field16(word, EEPROM_RSSI_A2_LNA_A2) == 0xff)
  rt2x00_set_field16(&word, EEPROM_RSSI_A2_LNA_A2,
       default_lna_gain);
 rt2x00_eeprom_write(rt2x00dev, EEPROM_RSSI_A2, word);

 return 0;
}
