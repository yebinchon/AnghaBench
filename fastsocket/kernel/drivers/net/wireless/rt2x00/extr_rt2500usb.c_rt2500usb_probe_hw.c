
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct rt2x00_dev {int rssi_offset; int cap_flags; } ;


 int CAPABILITY_HW_CRYPTO ;
 int DEFAULT_RSSI_OFFSET ;
 int MAC_CSR19 ;
 int MAC_CSR19_DIR0 ;
 int REQUIRE_ATIM_QUEUE ;
 int REQUIRE_BEACON_GUARD ;
 int REQUIRE_COPY_IV ;
 int REQUIRE_PS_AUTOWAKE ;
 int REQUIRE_SW_SEQNO ;
 int __set_bit (int ,int *) ;
 int modparam_nohwcrypt ;
 int rt2500usb_init_eeprom (struct rt2x00_dev*) ;
 int rt2500usb_probe_hw_mode (struct rt2x00_dev*) ;
 int rt2500usb_register_read (struct rt2x00_dev*,int ,int *) ;
 int rt2500usb_register_write (struct rt2x00_dev*,int ,int ) ;
 int rt2500usb_validate_eeprom (struct rt2x00_dev*) ;
 int rt2x00_set_field16 (int *,int ,int ) ;

__attribute__((used)) static int rt2500usb_probe_hw(struct rt2x00_dev *rt2x00dev)
{
 int retval;
 u16 reg;




 retval = rt2500usb_validate_eeprom(rt2x00dev);
 if (retval)
  return retval;

 retval = rt2500usb_init_eeprom(rt2x00dev);
 if (retval)
  return retval;





 rt2500usb_register_read(rt2x00dev, MAC_CSR19, &reg);
 rt2x00_set_field16(&reg, MAC_CSR19_DIR0, 0);
 rt2500usb_register_write(rt2x00dev, MAC_CSR19, reg);




 retval = rt2500usb_probe_hw_mode(rt2x00dev);
 if (retval)
  return retval;




 __set_bit(REQUIRE_ATIM_QUEUE, &rt2x00dev->cap_flags);
 __set_bit(REQUIRE_BEACON_GUARD, &rt2x00dev->cap_flags);
 if (!modparam_nohwcrypt) {
  __set_bit(CAPABILITY_HW_CRYPTO, &rt2x00dev->cap_flags);
  __set_bit(REQUIRE_COPY_IV, &rt2x00dev->cap_flags);
 }
 __set_bit(REQUIRE_SW_SEQNO, &rt2x00dev->cap_flags);
 __set_bit(REQUIRE_PS_AUTOWAKE, &rt2x00dev->cap_flags);




 rt2x00dev->rssi_offset = DEFAULT_RSSI_OFFSET;

 return 0;
}
