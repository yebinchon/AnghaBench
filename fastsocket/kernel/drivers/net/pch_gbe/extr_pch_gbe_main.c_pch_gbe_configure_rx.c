
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned long long u32 ;
struct pch_gbe_hw {TYPE_2__* reg; } ;
struct pch_gbe_adapter {TYPE_1__* rx_ring; struct pch_gbe_hw hw; } ;
struct TYPE_4__ {int RX_DSC_SW_P; int RX_DSC_SIZE; int RX_DSC_BASE; int DMA_CTRL; int MAC_RX_EN; } ;
struct TYPE_3__ {unsigned long long dma; unsigned long long size; } ;


 unsigned long long PCH_GBE_RX_DMA_EN ;
 unsigned long long ioread32 (int *) ;
 int iowrite32 (unsigned long long,int *) ;
 int pch_gbe_disable_mac_rx (struct pch_gbe_hw*) ;
 int pch_gbe_mac_force_mac_fc (struct pch_gbe_hw*) ;
 int pr_debug (char*,unsigned long long,unsigned long long) ;

__attribute__((used)) static void pch_gbe_configure_rx(struct pch_gbe_adapter *adapter)
{
 struct pch_gbe_hw *hw = &adapter->hw;
 u32 rdba, rdlen, rxdma;

 pr_debug("dma adr = 0x%08llx  size = 0x%08x\n",
   (unsigned long long)adapter->rx_ring->dma,
   adapter->rx_ring->size);

 pch_gbe_mac_force_mac_fc(hw);

 pch_gbe_disable_mac_rx(hw);


 rxdma = ioread32(&hw->reg->DMA_CTRL);
 rxdma &= ~PCH_GBE_RX_DMA_EN;
 iowrite32(rxdma, &hw->reg->DMA_CTRL);

 pr_debug("MAC_RX_EN reg = 0x%08x  DMA_CTRL reg = 0x%08x\n",
   ioread32(&hw->reg->MAC_RX_EN),
   ioread32(&hw->reg->DMA_CTRL));



 rdba = adapter->rx_ring->dma;
 rdlen = adapter->rx_ring->size - 0x10;
 iowrite32(rdba, &hw->reg->RX_DSC_BASE);
 iowrite32(rdlen, &hw->reg->RX_DSC_SIZE);
 iowrite32((rdba + rdlen), &hw->reg->RX_DSC_SW_P);
}
