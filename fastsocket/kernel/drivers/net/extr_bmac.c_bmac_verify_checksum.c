
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int SROMAddressBits ;
 unsigned short read_srom (struct net_device*,int,int ) ;
 int reset_and_select_srom (struct net_device*) ;

__attribute__((used)) static int
bmac_verify_checksum(struct net_device *dev)
{
 unsigned short data, storedCS;

 reset_and_select_srom(dev);
 data = read_srom(dev, 3, SROMAddressBits);
 storedCS = ((data >> 8) & 0x0ff) | ((data << 8) & 0xff00);

 return 0;
}
