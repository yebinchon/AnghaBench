
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct net_device {scalar_t__ base_addr; } ;
typedef scalar_t__ dma_addr_t ;
struct TYPE_3__ {int tlanRev; int rxHead; int rxEocCount; scalar_t__ rxListDMA; int rxTail; } ;
typedef TYPE_1__ TLanPrivateInfo ;
typedef int TLanList ;


 scalar_t__ TLAN_CH_PARM ;
 int TLAN_DBG (int ,char*,int,int ) ;
 int TLAN_DEBUG_RX ;
 int TLAN_HC_GO ;
 int TLAN_HC_RT ;
 TYPE_1__* netdev_priv (struct net_device*) ;
 int outl (scalar_t__,scalar_t__) ;

__attribute__((used)) static u32 TLan_HandleRxEOC( struct net_device *dev, u16 host_int )
{
 TLanPrivateInfo *priv = netdev_priv(dev);
 dma_addr_t head_list_phys;
 u32 ack = 1;

 if ( priv->tlanRev < 0x30 ) {
  TLAN_DBG( TLAN_DEBUG_RX,
     "RECEIVE:  Handling RX EOC (Head=%d Tail=%d) -- IRQ\n",
     priv->rxHead, priv->rxTail );
  head_list_phys = priv->rxListDMA + sizeof(TLanList) * priv->rxHead;
  outl( head_list_phys, dev->base_addr + TLAN_CH_PARM );
  ack |= TLAN_HC_GO | TLAN_HC_RT;
  priv->rxEocCount++;
 }

 return ack;

}
