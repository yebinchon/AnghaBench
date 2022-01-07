
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct usbnet {int dummy; } ;


 int BUG_ON (int) ;
 int E2P_CMD ;
 int E2P_CMD_ADDR_ ;
 int E2P_CMD_BUSY_ ;
 int E2P_CMD_READ_ ;
 int E2P_DATA ;
 int smsc95xx_eeprom_confirm_not_busy (struct usbnet*) ;
 int smsc95xx_read_reg (struct usbnet*,int ,int*) ;
 int smsc95xx_wait_eeprom (struct usbnet*) ;
 int smsc95xx_write_reg (struct usbnet*,int ,int) ;

__attribute__((used)) static int smsc95xx_read_eeprom(struct usbnet *dev, u32 offset, u32 length,
    u8 *data)
{
 u32 val;
 int i, ret;

 BUG_ON(!dev);
 BUG_ON(!data);

 ret = smsc95xx_eeprom_confirm_not_busy(dev);
 if (ret)
  return ret;

 for (i = 0; i < length; i++) {
  val = E2P_CMD_BUSY_ | E2P_CMD_READ_ | (offset & E2P_CMD_ADDR_);
  smsc95xx_write_reg(dev, E2P_CMD, val);

  ret = smsc95xx_wait_eeprom(dev);
  if (ret < 0)
   return ret;

  smsc95xx_read_reg(dev, E2P_DATA, &val);

  data[i] = val & 0xFF;
  offset++;
 }

 return 0;
}
