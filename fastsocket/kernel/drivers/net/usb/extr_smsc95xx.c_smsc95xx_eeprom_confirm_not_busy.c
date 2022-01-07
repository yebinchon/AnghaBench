
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct usbnet {int dummy; } ;


 int E2P_CMD ;
 int E2P_CMD_BUSY_ ;
 int EIO ;
 scalar_t__ HZ ;
 int devwarn (struct usbnet*,char*) ;
 unsigned long jiffies ;
 int smsc95xx_read_reg (struct usbnet*,int ,int*) ;
 int time_after (unsigned long,scalar_t__) ;
 int udelay (int) ;

__attribute__((used)) static int smsc95xx_eeprom_confirm_not_busy(struct usbnet *dev)
{
 unsigned long start_time = jiffies;
 u32 val;

 do {
  smsc95xx_read_reg(dev, E2P_CMD, &val);

  if (!(val & E2P_CMD_BUSY_))
   return 0;

  udelay(40);
 } while (!time_after(jiffies, start_time + HZ));

 devwarn(dev, "EEPROM is busy");
 return -EIO;
}
