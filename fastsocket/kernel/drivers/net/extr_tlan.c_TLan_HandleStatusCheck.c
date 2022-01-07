
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct net_device {int name; scalar_t__ base_addr; } ;
struct TYPE_3__ {int* phy; size_t phyNum; int tlan_tqueue; } ;
typedef TYPE_1__ TLanPrivateInfo ;


 scalar_t__ TLAN_CH_PARM ;
 int TLAN_DBG (int ,char*,int ,...) ;
 int TLAN_DEBUG_GNRL ;
 int TLAN_HC_AD_RST ;
 int TLAN_HI_IV_MASK ;
 scalar_t__ TLAN_HOST_CMD ;
 int TLAN_NET_STS ;
 int TLAN_NET_STS_MIRQ ;
 int TLAN_RECORD ;
 int TLAN_TC_SWAPOL ;
 int TLAN_TLPHY_CTL ;
 int TLAN_TLPHY_STS ;
 int TLAN_TS_POLOK ;
 int TLan_DioRead8 (scalar_t__,int ) ;
 int TLan_DioWrite8 (scalar_t__,int ,int) ;
 int TLan_MiiReadReg (struct net_device*,int,int ,int*) ;
 int TLan_MiiWriteReg (struct net_device*,int,int ,int) ;
 int TLan_PhyPrint (struct net_device*) ;
 int TLan_ReadAndClearStats (struct net_device*,int ) ;
 scalar_t__ debug ;
 int inl (scalar_t__) ;
 TYPE_1__* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int outl (int ,scalar_t__) ;
 int printk (char*,int ,int) ;
 int schedule_work (int *) ;

__attribute__((used)) static u32 TLan_HandleStatusCheck( struct net_device *dev, u16 host_int )
{
 TLanPrivateInfo *priv = netdev_priv(dev);
 u32 ack;
 u32 error;
 u8 net_sts;
 u32 phy;
 u16 tlphy_ctl;
 u16 tlphy_sts;

 ack = 1;
 if ( host_int & TLAN_HI_IV_MASK ) {
  netif_stop_queue( dev );
  error = inl( dev->base_addr + TLAN_CH_PARM );
  printk( "TLAN:  %s: Adaptor Error = 0x%x\n", dev->name, error );
  TLan_ReadAndClearStats( dev, TLAN_RECORD );
  outl( TLAN_HC_AD_RST, dev->base_addr + TLAN_HOST_CMD );

  schedule_work(&priv->tlan_tqueue);

  netif_wake_queue(dev);
  ack = 0;
 } else {
  TLAN_DBG( TLAN_DEBUG_GNRL, "%s: Status Check\n", dev->name );
  phy = priv->phy[priv->phyNum];

  net_sts = TLan_DioRead8( dev->base_addr, TLAN_NET_STS );
  if ( net_sts ) {
   TLan_DioWrite8( dev->base_addr, TLAN_NET_STS, net_sts );
   TLAN_DBG( TLAN_DEBUG_GNRL, "%s:    Net_Sts = %x\n",
      dev->name, (unsigned) net_sts );
  }
  if ( ( net_sts & TLAN_NET_STS_MIRQ ) && ( priv->phyNum == 0 ) ) {
   TLan_MiiReadReg( dev, phy, TLAN_TLPHY_STS, &tlphy_sts );
   TLan_MiiReadReg( dev, phy, TLAN_TLPHY_CTL, &tlphy_ctl );
          if ( ! ( tlphy_sts & TLAN_TS_POLOK ) &&
        ! ( tlphy_ctl & TLAN_TC_SWAPOL ) ) {
                  tlphy_ctl |= TLAN_TC_SWAPOL;
                  TLan_MiiWriteReg( dev, phy, TLAN_TLPHY_CTL, tlphy_ctl);
          } else if ( ( tlphy_sts & TLAN_TS_POLOK )
        && ( tlphy_ctl & TLAN_TC_SWAPOL ) ) {
                  tlphy_ctl &= ~TLAN_TC_SWAPOL;
                  TLan_MiiWriteReg( dev, phy, TLAN_TLPHY_CTL, tlphy_ctl);
          }

   if (debug) {
    TLan_PhyPrint( dev );
   }
  }
 }

 return ack;

}
