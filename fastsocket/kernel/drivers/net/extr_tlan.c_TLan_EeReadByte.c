
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct net_device {int base_addr; } ;
struct TYPE_3__ {int lock; } ;
typedef TYPE_1__ TLanPrivateInfo ;


 int TLAN_EEPROM_ACK ;
 int TLAN_EEPROM_STOP ;
 int TLan_EeReceiveByte (int ,int*,int ) ;
 int TLan_EeSendByte (int ,int,int ) ;
 int TLan_EeSendStart (int ) ;
 TYPE_1__* netdev_priv (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int TLan_EeReadByte( struct net_device *dev, u8 ee_addr, u8 *data )
{
 int err;
 TLanPrivateInfo *priv = netdev_priv(dev);
 unsigned long flags = 0;
 int ret=0;

 spin_lock_irqsave(&priv->lock, flags);

 TLan_EeSendStart( dev->base_addr );
 err = TLan_EeSendByte( dev->base_addr, 0xA0, TLAN_EEPROM_ACK );
 if (err)
 {
  ret=1;
  goto fail;
 }
 err = TLan_EeSendByte( dev->base_addr, ee_addr, TLAN_EEPROM_ACK );
 if (err)
 {
  ret=2;
  goto fail;
 }
 TLan_EeSendStart( dev->base_addr );
 err = TLan_EeSendByte( dev->base_addr, 0xA1, TLAN_EEPROM_ACK );
 if (err)
 {
  ret=3;
  goto fail;
 }
 TLan_EeReceiveByte( dev->base_addr, data, TLAN_EEPROM_STOP );
fail:
 spin_unlock_irqrestore(&priv->lock, flags);

 return ret;

}
