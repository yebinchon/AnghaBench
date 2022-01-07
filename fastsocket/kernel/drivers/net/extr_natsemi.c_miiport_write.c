
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct net_device {int dummy; } ;


 int mii_getbit (struct net_device*) ;
 int mii_send_bits (struct net_device*,int,int) ;

__attribute__((used)) static void miiport_write(struct net_device *dev, int phy_id, int reg, u16 data)
{
 u32 cmd;


 mii_send_bits (dev, 0xffffffff, 32);


 cmd = (0x5002 << 16) | (phy_id << 23) | (reg << 18) | data;
 mii_send_bits (dev, cmd, 32);

 mii_getbit (dev);
}
