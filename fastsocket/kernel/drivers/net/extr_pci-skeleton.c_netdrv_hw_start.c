
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct netdrv_private {size_t chipset; int rx_ring_dma; int tx_bufs_dma; int* tx_buf; int tx_bufs; scalar_t__ cur_rx; void* mmio_addr; } ;
struct net_device {scalar_t__ dev_addr; } ;
struct TYPE_2__ {int RxConfigMask; } ;


 int Cfg9346 ;
 int Cfg9346_Lock ;
 int Cfg9346_Unlock ;
 int ChipCmd ;
 int ChipCmdClear ;
 int CmdReset ;
 int CmdRxEnb ;
 int CmdTxEnb ;
 int DPRINTK (char*) ;
 int IntrMask ;
 scalar_t__ MAC0 ;
 int MultiIntr ;
 int MultiIntrClear ;
 int NETDRV_R16 (int ) ;
 int NETDRV_R32 (scalar_t__) ;
 int NETDRV_R8 (int ) ;
 int NETDRV_W16 (int ,int) ;
 int NETDRV_W16_F (int ,int ) ;
 int NETDRV_W32 (int ,int) ;
 int NETDRV_W32_F (scalar_t__,int) ;
 int NETDRV_W8 (int ,int) ;
 int NETDRV_W8_F (int ,int) ;
 int NUM_TX_DESC ;
 scalar_t__ RxBuf ;
 scalar_t__ RxConfig ;
 scalar_t__ RxMissed ;
 int TX_DMA_BURST ;
 scalar_t__ TxAddr0 ;
 int TxConfig ;
 int TxDMAShift ;
 int cpu_to_le32 (int) ;
 struct netdrv_private* netdev_priv (struct net_device*) ;
 int netdrv_intr_mask ;
 int netdrv_rx_config ;
 int netdrv_set_rx_mode (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 TYPE_1__* rtl_chip_info ;
 int udelay (int) ;

__attribute__((used)) static void netdrv_hw_start (struct net_device *dev)
{
 struct netdrv_private *tp = netdev_priv(dev);
 void *ioaddr = tp->mmio_addr;
 u32 i;

 DPRINTK ("ENTER\n");


 NETDRV_W8 (ChipCmd, (NETDRV_R8 (ChipCmd) & ChipCmdClear) | CmdReset);
 udelay (100);


 for (i = 1000; i > 0; i--)
  if ((NETDRV_R8 (ChipCmd) & CmdReset) == 0)
   break;


 NETDRV_W32_F (MAC0 + 0, cpu_to_le32 (*(u32 *) (dev->dev_addr + 0)));
 NETDRV_W32_F (MAC0 + 4, cpu_to_le32 (*(u32 *) (dev->dev_addr + 4)));


 NETDRV_W8_F (ChipCmd, (NETDRV_R8 (ChipCmd) & ChipCmdClear) |
      CmdRxEnb | CmdTxEnb);

 i = netdrv_rx_config |
     (NETDRV_R32 (RxConfig) & rtl_chip_info[tp->chipset].RxConfigMask);
 NETDRV_W32_F (RxConfig, i);


 NETDRV_W32 (TxConfig, (TX_DMA_BURST << TxDMAShift));


 NETDRV_W8_F (Cfg9346, Cfg9346_Unlock);
 udelay (10);

 tp->cur_rx = 0;


 NETDRV_W8_F (Cfg9346, Cfg9346_Lock);
 udelay (10);


 NETDRV_W32_F (RxBuf, tp->rx_ring_dma);


 for (i = 0; i < NUM_TX_DESC; i++)
  NETDRV_W32_F (TxAddr0 + (i * 4), tp->tx_bufs_dma + (tp->tx_buf[i] - tp->tx_bufs));

 NETDRV_W32_F (RxMissed, 0);

 netdrv_set_rx_mode (dev);


 NETDRV_W16 (MultiIntr, NETDRV_R16 (MultiIntr) & MultiIntrClear);


 NETDRV_W8_F (ChipCmd, (NETDRV_R8 (ChipCmd) & ChipCmdClear) |
      CmdRxEnb | CmdTxEnb);


 NETDRV_W16_F (IntrMask, netdrv_intr_mask);

 netif_start_queue (dev);

 DPRINTK ("EXIT\n");
}
