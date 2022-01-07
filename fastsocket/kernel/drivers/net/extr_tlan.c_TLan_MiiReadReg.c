
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct net_device {int base_addr; } ;
struct TYPE_3__ {int lock; } ;
typedef TYPE_1__ TLanPrivateInfo ;


 int FALSE ;
 int TLAN_DIO_ADR ;
 int TLAN_DIO_DATA ;
 int TLAN_NET_SIO ;
 int TLAN_NET_SIO_MCLK ;
 int TLAN_NET_SIO_MDATA ;
 int TLAN_NET_SIO_MINTEN ;
 int TLAN_NET_SIO_MTXEN ;
 int TLan_ClearBit (int ,int) ;
 int TLan_GetBit (int ,int) ;
 int TLan_MiiSendData (int,int,int) ;
 int TLan_MiiSync (int) ;
 int TLan_SetBit (int ,int) ;
 int TRUE ;
 int in_irq () ;
 TYPE_1__* netdev_priv (struct net_device*) ;
 int outw (int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int TLan_MiiReadReg( struct net_device *dev, u16 phy, u16 reg, u16 *val )
{
 u8 nack;
 u16 sio, tmp;
  u32 i;
 int err;
 int minten;
 TLanPrivateInfo *priv = netdev_priv(dev);
 unsigned long flags = 0;

 err = FALSE;
 outw(TLAN_NET_SIO, dev->base_addr + TLAN_DIO_ADR);
 sio = dev->base_addr + TLAN_DIO_DATA + TLAN_NET_SIO;

 if (!in_irq())
  spin_lock_irqsave(&priv->lock, flags);

 TLan_MiiSync(dev->base_addr);

 minten = TLan_GetBit( TLAN_NET_SIO_MINTEN, sio );
 if ( minten )
  TLan_ClearBit(TLAN_NET_SIO_MINTEN, sio);

 TLan_MiiSendData( dev->base_addr, 0x1, 2 );
 TLan_MiiSendData( dev->base_addr, 0x2, 2 );
 TLan_MiiSendData( dev->base_addr, phy, 5 );
 TLan_MiiSendData( dev->base_addr, reg, 5 );


 TLan_ClearBit(TLAN_NET_SIO_MTXEN, sio);

 TLan_ClearBit(TLAN_NET_SIO_MCLK, sio);
 TLan_SetBit(TLAN_NET_SIO_MCLK, sio);
 TLan_ClearBit(TLAN_NET_SIO_MCLK, sio);

 nack = TLan_GetBit(TLAN_NET_SIO_MDATA, sio);
 TLan_SetBit(TLAN_NET_SIO_MCLK, sio);
 if (nack) {
  for (i = 0; i < 16; i++) {
   TLan_ClearBit(TLAN_NET_SIO_MCLK, sio);
   TLan_SetBit(TLAN_NET_SIO_MCLK, sio);
  }
  tmp = 0xffff;
  err = TRUE;
 } else {
  for (tmp = 0, i = 0x8000; i; i >>= 1) {
   TLan_ClearBit(TLAN_NET_SIO_MCLK, sio);
   if (TLan_GetBit(TLAN_NET_SIO_MDATA, sio))
    tmp |= i;
   TLan_SetBit(TLAN_NET_SIO_MCLK, sio);
  }
 }


 TLan_ClearBit(TLAN_NET_SIO_MCLK, sio);
 TLan_SetBit(TLAN_NET_SIO_MCLK, sio);

 if ( minten )
  TLan_SetBit(TLAN_NET_SIO_MINTEN, sio);

 *val = tmp;

 if (!in_irq())
  spin_unlock_irqrestore(&priv->lock, flags);

 return err;

}
