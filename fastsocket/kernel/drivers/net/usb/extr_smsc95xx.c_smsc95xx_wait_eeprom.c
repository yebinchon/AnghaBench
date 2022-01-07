
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct usbnet {int dummy; } ;


 int E2P_CMD ;
 int E2P_CMD_BUSY_ ;
 int E2P_CMD_TIMEOUT_ ;
 int EIO ;
 scalar_t__ HZ ;
 int devwarn (struct usbnet*,char*) ;
 unsigned long jiffies ;
 int smsc95xx_read_reg (struct usbnet*,int ,int*) ;
 int time_after (unsigned long,scalar_t__) ;
 int udelay (int) ;

__attribute__((used)) static int smsc95xx_wait_eeprom(struct usbnet *dev)
{
 unsigned long start_time = jiffies;
 u32 val;

 do {
  smsc95xx_read_reg(dev, E2P_CMD, &val);
  if (!(val & E2P_CMD_BUSY_) || (val & E2P_CMD_TIMEOUT_))
   break;
  udelay(40);
 } while (!time_after(jiffies, start_time + HZ));

 if (val & (E2P_CMD_TIMEOUT_ | E2P_CMD_BUSY_)) {
  devwarn(dev, "EEPROM read operation timeout");
  return -EIO;
 }

 return 0;
}
