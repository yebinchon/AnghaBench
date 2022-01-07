
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rt2x00_dev {int rssi_offset; int cap_flags; } ;


 int CAPABILITY_CONTROL_FILTERS ;
 int CAPABILITY_HW_CRYPTO ;
 int CAPABILITY_LINK_TUNING ;
 int DEFAULT_RSSI_OFFSET ;
 int MAC_CSR13 ;
 int MAC_CSR13_DIR7 ;
 int REQUIRE_FIRMWARE ;
 int REQUIRE_PS_AUTOWAKE ;
 int __set_bit (int ,int *) ;
 int modparam_nohwcrypt ;
 int rt2x00_set_field32 (int *,int ,int ) ;
 int rt2x00usb_register_read (struct rt2x00_dev*,int ,int *) ;
 int rt2x00usb_register_write (struct rt2x00_dev*,int ,int ) ;
 int rt73usb_init_eeprom (struct rt2x00_dev*) ;
 int rt73usb_probe_hw_mode (struct rt2x00_dev*) ;
 int rt73usb_validate_eeprom (struct rt2x00_dev*) ;

__attribute__((used)) static int rt73usb_probe_hw(struct rt2x00_dev *rt2x00dev)
{
 int retval;
 u32 reg;




 retval = rt73usb_validate_eeprom(rt2x00dev);
 if (retval)
  return retval;

 retval = rt73usb_init_eeprom(rt2x00dev);
 if (retval)
  return retval;





 rt2x00usb_register_read(rt2x00dev, MAC_CSR13, &reg);
 rt2x00_set_field32(&reg, MAC_CSR13_DIR7, 0);
 rt2x00usb_register_write(rt2x00dev, MAC_CSR13, reg);




 retval = rt73usb_probe_hw_mode(rt2x00dev);
 if (retval)
  return retval;





 __set_bit(CAPABILITY_CONTROL_FILTERS, &rt2x00dev->cap_flags);




 __set_bit(REQUIRE_FIRMWARE, &rt2x00dev->cap_flags);
 if (!modparam_nohwcrypt)
  __set_bit(CAPABILITY_HW_CRYPTO, &rt2x00dev->cap_flags);
 __set_bit(CAPABILITY_LINK_TUNING, &rt2x00dev->cap_flags);
 __set_bit(REQUIRE_PS_AUTOWAKE, &rt2x00dev->cap_flags);




 rt2x00dev->rssi_offset = DEFAULT_RSSI_OFFSET;

 return 0;
}
