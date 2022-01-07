
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct rt2x00_dev {int eeprom; } ;


 int ANTENNA_SW_DIVERSITY ;
 int DEFAULT_RSSI_OFFSET ;
 int EEPROM_ANTENNA ;
 int EEPROM_ANTENNA_DYN_TXAGC ;
 int EEPROM_ANTENNA_HARDWARE_RADIO ;
 int EEPROM_ANTENNA_LED_MODE ;
 int EEPROM_ANTENNA_NUM ;
 int EEPROM_ANTENNA_RF_TYPE ;
 int EEPROM_ANTENNA_RX_DEFAULT ;
 int EEPROM_ANTENNA_TX_DEFAULT ;
 int EEPROM_BBPTUNE ;
 int EEPROM_BBPTUNE_R17 ;
 int EEPROM_BBPTUNE_R17_HIGH ;
 int EEPROM_BBPTUNE_R17_LOW ;
 int EEPROM_BBPTUNE_R24 ;
 int EEPROM_BBPTUNE_R24_HIGH ;
 int EEPROM_BBPTUNE_R24_LOW ;
 int EEPROM_BBPTUNE_R25 ;
 int EEPROM_BBPTUNE_R25_HIGH ;
 int EEPROM_BBPTUNE_R25_LOW ;
 int EEPROM_BBPTUNE_R61 ;
 int EEPROM_BBPTUNE_R61_HIGH ;
 int EEPROM_BBPTUNE_R61_LOW ;
 int EEPROM_BBPTUNE_THRESHOLD ;
 int EEPROM_BBPTUNE_VGC ;
 int EEPROM_BBPTUNE_VGCLOWER ;
 int EEPROM_BBPTUNE_VGCUPPER ;
 int EEPROM_CALIBRATE_OFFSET ;
 int EEPROM_CALIBRATE_OFFSET_RSSI ;
 int EEPROM_MAC_ADDR_0 ;
 int EEPROM_NIC ;
 int EEPROM_NIC_CARDBUS_ACCEL ;
 int EEPROM_NIC_CCK_TX_POWER ;
 int EEPROM_NIC_DYN_BBP_TUNE ;
 int EEPROM_SIZE ;
 int LED_MODE_DEFAULT ;
 int RF2522 ;
 int eth_random_addr (int*) ;
 int is_valid_ether_addr (int*) ;
 int rt2500usb_bbp_read (struct rt2x00_dev*,int,int*) ;
 int* rt2x00_eeprom_addr (struct rt2x00_dev*,int ) ;
 int rt2x00_eeprom_dbg (struct rt2x00_dev*,char*,...) ;
 int rt2x00_eeprom_read (struct rt2x00_dev*,int ,int*) ;
 int rt2x00_eeprom_write (struct rt2x00_dev*,int ,int) ;
 int rt2x00_set_field16 (int*,int ,int) ;
 int rt2x00usb_eeprom_read (struct rt2x00_dev*,int ,int ) ;

__attribute__((used)) static int rt2500usb_validate_eeprom(struct rt2x00_dev *rt2x00dev)
{
 u16 word;
 u8 *mac;
 u8 bbp;

 rt2x00usb_eeprom_read(rt2x00dev, rt2x00dev->eeprom, EEPROM_SIZE);




 mac = rt2x00_eeprom_addr(rt2x00dev, EEPROM_MAC_ADDR_0);
 if (!is_valid_ether_addr(mac)) {
  eth_random_addr(mac);
  rt2x00_eeprom_dbg(rt2x00dev, "MAC: %pM\n", mac);
 }

 rt2x00_eeprom_read(rt2x00dev, EEPROM_ANTENNA, &word);
 if (word == 0xffff) {
  rt2x00_set_field16(&word, EEPROM_ANTENNA_NUM, 2);
  rt2x00_set_field16(&word, EEPROM_ANTENNA_TX_DEFAULT,
       ANTENNA_SW_DIVERSITY);
  rt2x00_set_field16(&word, EEPROM_ANTENNA_RX_DEFAULT,
       ANTENNA_SW_DIVERSITY);
  rt2x00_set_field16(&word, EEPROM_ANTENNA_LED_MODE,
       LED_MODE_DEFAULT);
  rt2x00_set_field16(&word, EEPROM_ANTENNA_DYN_TXAGC, 0);
  rt2x00_set_field16(&word, EEPROM_ANTENNA_HARDWARE_RADIO, 0);
  rt2x00_set_field16(&word, EEPROM_ANTENNA_RF_TYPE, RF2522);
  rt2x00_eeprom_write(rt2x00dev, EEPROM_ANTENNA, word);
  rt2x00_eeprom_dbg(rt2x00dev, "Antenna: 0x%04x\n", word);
 }

 rt2x00_eeprom_read(rt2x00dev, EEPROM_NIC, &word);
 if (word == 0xffff) {
  rt2x00_set_field16(&word, EEPROM_NIC_CARDBUS_ACCEL, 0);
  rt2x00_set_field16(&word, EEPROM_NIC_DYN_BBP_TUNE, 0);
  rt2x00_set_field16(&word, EEPROM_NIC_CCK_TX_POWER, 0);
  rt2x00_eeprom_write(rt2x00dev, EEPROM_NIC, word);
  rt2x00_eeprom_dbg(rt2x00dev, "NIC: 0x%04x\n", word);
 }

 rt2x00_eeprom_read(rt2x00dev, EEPROM_CALIBRATE_OFFSET, &word);
 if (word == 0xffff) {
  rt2x00_set_field16(&word, EEPROM_CALIBRATE_OFFSET_RSSI,
       DEFAULT_RSSI_OFFSET);
  rt2x00_eeprom_write(rt2x00dev, EEPROM_CALIBRATE_OFFSET, word);
  rt2x00_eeprom_dbg(rt2x00dev, "Calibrate offset: 0x%04x\n",
      word);
 }

 rt2x00_eeprom_read(rt2x00dev, EEPROM_BBPTUNE, &word);
 if (word == 0xffff) {
  rt2x00_set_field16(&word, EEPROM_BBPTUNE_THRESHOLD, 45);
  rt2x00_eeprom_write(rt2x00dev, EEPROM_BBPTUNE, word);
  rt2x00_eeprom_dbg(rt2x00dev, "BBPtune: 0x%04x\n", word);
 }





 rt2500usb_bbp_read(rt2x00dev, 17, &bbp);
 bbp -= 6;

 rt2x00_eeprom_read(rt2x00dev, EEPROM_BBPTUNE_VGC, &word);
 if (word == 0xffff) {
  rt2x00_set_field16(&word, EEPROM_BBPTUNE_VGCUPPER, 0x40);
  rt2x00_set_field16(&word, EEPROM_BBPTUNE_VGCLOWER, bbp);
  rt2x00_eeprom_write(rt2x00dev, EEPROM_BBPTUNE_VGC, word);
  rt2x00_eeprom_dbg(rt2x00dev, "BBPtune vgc: 0x%04x\n", word);
 } else {
  rt2x00_set_field16(&word, EEPROM_BBPTUNE_VGCLOWER, bbp);
  rt2x00_eeprom_write(rt2x00dev, EEPROM_BBPTUNE_VGC, word);
 }

 rt2x00_eeprom_read(rt2x00dev, EEPROM_BBPTUNE_R17, &word);
 if (word == 0xffff) {
  rt2x00_set_field16(&word, EEPROM_BBPTUNE_R17_LOW, 0x48);
  rt2x00_set_field16(&word, EEPROM_BBPTUNE_R17_HIGH, 0x41);
  rt2x00_eeprom_write(rt2x00dev, EEPROM_BBPTUNE_R17, word);
  rt2x00_eeprom_dbg(rt2x00dev, "BBPtune r17: 0x%04x\n", word);
 }

 rt2x00_eeprom_read(rt2x00dev, EEPROM_BBPTUNE_R24, &word);
 if (word == 0xffff) {
  rt2x00_set_field16(&word, EEPROM_BBPTUNE_R24_LOW, 0x40);
  rt2x00_set_field16(&word, EEPROM_BBPTUNE_R24_HIGH, 0x80);
  rt2x00_eeprom_write(rt2x00dev, EEPROM_BBPTUNE_R24, word);
  rt2x00_eeprom_dbg(rt2x00dev, "BBPtune r24: 0x%04x\n", word);
 }

 rt2x00_eeprom_read(rt2x00dev, EEPROM_BBPTUNE_R25, &word);
 if (word == 0xffff) {
  rt2x00_set_field16(&word, EEPROM_BBPTUNE_R25_LOW, 0x40);
  rt2x00_set_field16(&word, EEPROM_BBPTUNE_R25_HIGH, 0x50);
  rt2x00_eeprom_write(rt2x00dev, EEPROM_BBPTUNE_R25, word);
  rt2x00_eeprom_dbg(rt2x00dev, "BBPtune r25: 0x%04x\n", word);
 }

 rt2x00_eeprom_read(rt2x00dev, EEPROM_BBPTUNE_R61, &word);
 if (word == 0xffff) {
  rt2x00_set_field16(&word, EEPROM_BBPTUNE_R61_LOW, 0x60);
  rt2x00_set_field16(&word, EEPROM_BBPTUNE_R61_HIGH, 0x6d);
  rt2x00_eeprom_write(rt2x00dev, EEPROM_BBPTUNE_R61, word);
  rt2x00_eeprom_dbg(rt2x00dev, "BBPtune r61: 0x%04x\n", word);
 }

 return 0;
}
