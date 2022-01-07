
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
struct TYPE_2__ {scalar_t__ tx; scalar_t__ rx; } ;
struct rt2x00_dev {int cap_flags; int led_qual; int led_radio; TYPE_1__ default_ant; } ;


 void* ANTENNA_HW_DIVERSITY ;
 scalar_t__ ANTENNA_SW_DIVERSITY ;
 int CAPABILITY_HW_BUTTON ;
 int CAPABILITY_LINK_TUNING ;
 int CSR0 ;
 int CSR0_REVISION ;
 int EEPROM_ANTENNA ;
 int EEPROM_ANTENNA_HARDWARE_RADIO ;
 int EEPROM_ANTENNA_LED_MODE ;
 int EEPROM_ANTENNA_RF_TYPE ;
 int EEPROM_ANTENNA_RX_AGCVGC_TUNING ;
 int EEPROM_ANTENNA_RX_DEFAULT ;
 int EEPROM_ANTENNA_TX_DEFAULT ;
 int ENODEV ;
 scalar_t__ LED_MODE_ASUS ;
 scalar_t__ LED_MODE_DEFAULT ;
 scalar_t__ LED_MODE_TXRX_ACTIVITY ;
 int LED_TYPE_ACTIVITY ;
 int LED_TYPE_RADIO ;
 int RF2420 ;
 int RF2421 ;
 int RT2460 ;
 int __set_bit (int ,int *) ;
 int rt2400pci_init_led (struct rt2x00_dev*,int *,int ) ;
 int rt2x00_eeprom_read (struct rt2x00_dev*,int ,scalar_t__*) ;
 int rt2x00_err (struct rt2x00_dev*,char*) ;
 scalar_t__ rt2x00_get_field16 (scalar_t__,int ) ;
 int rt2x00_get_field32 (int ,int ) ;
 int rt2x00_rf (struct rt2x00_dev*,int ) ;
 int rt2x00_set_chip (struct rt2x00_dev*,int ,scalar_t__,int ) ;
 int rt2x00mmio_register_read (struct rt2x00_dev*,int ,int *) ;

__attribute__((used)) static int rt2400pci_init_eeprom(struct rt2x00_dev *rt2x00dev)
{
 u32 reg;
 u16 value;
 u16 eeprom;




 rt2x00_eeprom_read(rt2x00dev, EEPROM_ANTENNA, &eeprom);




 value = rt2x00_get_field16(eeprom, EEPROM_ANTENNA_RF_TYPE);
 rt2x00mmio_register_read(rt2x00dev, CSR0, &reg);
 rt2x00_set_chip(rt2x00dev, RT2460, value,
   rt2x00_get_field32(reg, CSR0_REVISION));

 if (!rt2x00_rf(rt2x00dev, RF2420) && !rt2x00_rf(rt2x00dev, RF2421)) {
  rt2x00_err(rt2x00dev, "Invalid RF chipset detected\n");
  return -ENODEV;
 }




 rt2x00dev->default_ant.tx =
     rt2x00_get_field16(eeprom, EEPROM_ANTENNA_TX_DEFAULT);
 rt2x00dev->default_ant.rx =
     rt2x00_get_field16(eeprom, EEPROM_ANTENNA_RX_DEFAULT);







 if (rt2x00dev->default_ant.tx == ANTENNA_SW_DIVERSITY)
  rt2x00dev->default_ant.tx = ANTENNA_HW_DIVERSITY;
 if (rt2x00dev->default_ant.rx == ANTENNA_SW_DIVERSITY)
  rt2x00dev->default_ant.rx = ANTENNA_HW_DIVERSITY;
 if (rt2x00_get_field16(eeprom, EEPROM_ANTENNA_HARDWARE_RADIO))
  __set_bit(CAPABILITY_HW_BUTTON, &rt2x00dev->cap_flags);




 if (rt2x00_get_field16(eeprom, EEPROM_ANTENNA_RX_AGCVGC_TUNING))
  __set_bit(CAPABILITY_LINK_TUNING, &rt2x00dev->cap_flags);

 return 0;
}
