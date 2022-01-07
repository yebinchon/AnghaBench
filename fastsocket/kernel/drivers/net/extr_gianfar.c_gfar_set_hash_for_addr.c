
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct net_device {int dummy; } ;
struct gfar_private {int hash_width; int * hash_regs; } ;


 int MAC_ADDR_LEN ;
 int ether_crc (int ,int*) ;
 int gfar_read (int ) ;
 int gfar_write (int ,int) ;
 struct gfar_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static void gfar_set_hash_for_addr(struct net_device *dev, u8 *addr)
{
 u32 tempval;
 struct gfar_private *priv = netdev_priv(dev);
 u32 result = ether_crc(MAC_ADDR_LEN, addr);
 int width = priv->hash_width;
 u8 whichbit = (result >> (32 - width)) & 0x1f;
 u8 whichreg = result >> (32 - width + 5);
 u32 value = (1 << (31-whichbit));

 tempval = gfar_read(priv->hash_regs[whichreg]);
 tempval |= value;
 gfar_write(priv->hash_regs[whichreg], tempval);

 return;
}
