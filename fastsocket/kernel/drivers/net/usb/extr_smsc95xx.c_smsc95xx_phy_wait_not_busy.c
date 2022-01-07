
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct usbnet {int dummy; } ;


 int EIO ;
 scalar_t__ HZ ;
 int MII_ADDR ;
 int MII_BUSY_ ;
 unsigned long jiffies ;
 int smsc95xx_read_reg (struct usbnet*,int ,int*) ;
 int time_after (unsigned long,scalar_t__) ;

__attribute__((used)) static int smsc95xx_phy_wait_not_busy(struct usbnet *dev)
{
 unsigned long start_time = jiffies;
 u32 val;

 do {
  smsc95xx_read_reg(dev, MII_ADDR, &val);
  if (!(val & MII_BUSY_))
   return 0;
 } while (!time_after(jiffies, start_time + HZ));

 return -EIO;
}
