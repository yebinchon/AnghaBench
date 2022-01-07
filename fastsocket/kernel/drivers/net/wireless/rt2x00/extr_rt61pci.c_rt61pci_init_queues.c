
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct rt2x00_dev {TYPE_4__* rx; TYPE_2__* tx; } ;
struct queue_entry_priv_mmio {int desc_dma; } ;
struct TYPE_8__ {int limit; int desc_size; TYPE_3__* entries; } ;
struct TYPE_7__ {struct queue_entry_priv_mmio* priv_data; } ;
struct TYPE_6__ {int limit; int desc_size; TYPE_1__* entries; } ;
struct TYPE_5__ {struct queue_entry_priv_mmio* priv_data; } ;


 int AC0_BASE_CSR ;
 int AC0_BASE_CSR_RING_REGISTER ;
 int AC1_BASE_CSR ;
 int AC1_BASE_CSR_RING_REGISTER ;
 int AC2_BASE_CSR ;
 int AC2_BASE_CSR_RING_REGISTER ;
 int AC3_BASE_CSR ;
 int AC3_BASE_CSR_RING_REGISTER ;
 int LOAD_TX_RING_CSR ;
 int LOAD_TX_RING_CSR_LOAD_TXD_AC0 ;
 int LOAD_TX_RING_CSR_LOAD_TXD_AC1 ;
 int LOAD_TX_RING_CSR_LOAD_TXD_AC2 ;
 int LOAD_TX_RING_CSR_LOAD_TXD_AC3 ;
 int RX_BASE_CSR ;
 int RX_BASE_CSR_RING_REGISTER ;
 int RX_CNTL_CSR ;
 int RX_CNTL_CSR_LOAD_RXD ;
 int RX_RING_CSR ;
 int RX_RING_CSR_RING_SIZE ;
 int RX_RING_CSR_RXD_SIZE ;
 int RX_RING_CSR_RXD_WRITEBACK_SIZE ;
 int TX_DMA_DST_CSR ;
 int TX_DMA_DST_CSR_DEST_AC0 ;
 int TX_DMA_DST_CSR_DEST_AC1 ;
 int TX_DMA_DST_CSR_DEST_AC2 ;
 int TX_DMA_DST_CSR_DEST_AC3 ;
 int TX_RING_CSR0 ;
 int TX_RING_CSR0_AC0_RING_SIZE ;
 int TX_RING_CSR0_AC1_RING_SIZE ;
 int TX_RING_CSR0_AC2_RING_SIZE ;
 int TX_RING_CSR0_AC3_RING_SIZE ;
 int TX_RING_CSR1 ;
 int TX_RING_CSR1_TXD_SIZE ;
 int rt2x00_set_field32 (int *,int ,int) ;
 int rt2x00mmio_register_read (struct rt2x00_dev*,int ,int *) ;
 int rt2x00mmio_register_write (struct rt2x00_dev*,int ,int ) ;

__attribute__((used)) static int rt61pci_init_queues(struct rt2x00_dev *rt2x00dev)
{
 struct queue_entry_priv_mmio *entry_priv;
 u32 reg;




 rt2x00mmio_register_read(rt2x00dev, TX_RING_CSR0, &reg);
 rt2x00_set_field32(&reg, TX_RING_CSR0_AC0_RING_SIZE,
      rt2x00dev->tx[0].limit);
 rt2x00_set_field32(&reg, TX_RING_CSR0_AC1_RING_SIZE,
      rt2x00dev->tx[1].limit);
 rt2x00_set_field32(&reg, TX_RING_CSR0_AC2_RING_SIZE,
      rt2x00dev->tx[2].limit);
 rt2x00_set_field32(&reg, TX_RING_CSR0_AC3_RING_SIZE,
      rt2x00dev->tx[3].limit);
 rt2x00mmio_register_write(rt2x00dev, TX_RING_CSR0, reg);

 rt2x00mmio_register_read(rt2x00dev, TX_RING_CSR1, &reg);
 rt2x00_set_field32(&reg, TX_RING_CSR1_TXD_SIZE,
      rt2x00dev->tx[0].desc_size / 4);
 rt2x00mmio_register_write(rt2x00dev, TX_RING_CSR1, reg);

 entry_priv = rt2x00dev->tx[0].entries[0].priv_data;
 rt2x00mmio_register_read(rt2x00dev, AC0_BASE_CSR, &reg);
 rt2x00_set_field32(&reg, AC0_BASE_CSR_RING_REGISTER,
      entry_priv->desc_dma);
 rt2x00mmio_register_write(rt2x00dev, AC0_BASE_CSR, reg);

 entry_priv = rt2x00dev->tx[1].entries[0].priv_data;
 rt2x00mmio_register_read(rt2x00dev, AC1_BASE_CSR, &reg);
 rt2x00_set_field32(&reg, AC1_BASE_CSR_RING_REGISTER,
      entry_priv->desc_dma);
 rt2x00mmio_register_write(rt2x00dev, AC1_BASE_CSR, reg);

 entry_priv = rt2x00dev->tx[2].entries[0].priv_data;
 rt2x00mmio_register_read(rt2x00dev, AC2_BASE_CSR, &reg);
 rt2x00_set_field32(&reg, AC2_BASE_CSR_RING_REGISTER,
      entry_priv->desc_dma);
 rt2x00mmio_register_write(rt2x00dev, AC2_BASE_CSR, reg);

 entry_priv = rt2x00dev->tx[3].entries[0].priv_data;
 rt2x00mmio_register_read(rt2x00dev, AC3_BASE_CSR, &reg);
 rt2x00_set_field32(&reg, AC3_BASE_CSR_RING_REGISTER,
      entry_priv->desc_dma);
 rt2x00mmio_register_write(rt2x00dev, AC3_BASE_CSR, reg);

 rt2x00mmio_register_read(rt2x00dev, RX_RING_CSR, &reg);
 rt2x00_set_field32(&reg, RX_RING_CSR_RING_SIZE, rt2x00dev->rx->limit);
 rt2x00_set_field32(&reg, RX_RING_CSR_RXD_SIZE,
      rt2x00dev->rx->desc_size / 4);
 rt2x00_set_field32(&reg, RX_RING_CSR_RXD_WRITEBACK_SIZE, 4);
 rt2x00mmio_register_write(rt2x00dev, RX_RING_CSR, reg);

 entry_priv = rt2x00dev->rx->entries[0].priv_data;
 rt2x00mmio_register_read(rt2x00dev, RX_BASE_CSR, &reg);
 rt2x00_set_field32(&reg, RX_BASE_CSR_RING_REGISTER,
      entry_priv->desc_dma);
 rt2x00mmio_register_write(rt2x00dev, RX_BASE_CSR, reg);

 rt2x00mmio_register_read(rt2x00dev, TX_DMA_DST_CSR, &reg);
 rt2x00_set_field32(&reg, TX_DMA_DST_CSR_DEST_AC0, 2);
 rt2x00_set_field32(&reg, TX_DMA_DST_CSR_DEST_AC1, 2);
 rt2x00_set_field32(&reg, TX_DMA_DST_CSR_DEST_AC2, 2);
 rt2x00_set_field32(&reg, TX_DMA_DST_CSR_DEST_AC3, 2);
 rt2x00mmio_register_write(rt2x00dev, TX_DMA_DST_CSR, reg);

 rt2x00mmio_register_read(rt2x00dev, LOAD_TX_RING_CSR, &reg);
 rt2x00_set_field32(&reg, LOAD_TX_RING_CSR_LOAD_TXD_AC0, 1);
 rt2x00_set_field32(&reg, LOAD_TX_RING_CSR_LOAD_TXD_AC1, 1);
 rt2x00_set_field32(&reg, LOAD_TX_RING_CSR_LOAD_TXD_AC2, 1);
 rt2x00_set_field32(&reg, LOAD_TX_RING_CSR_LOAD_TXD_AC3, 1);
 rt2x00mmio_register_write(rt2x00dev, LOAD_TX_RING_CSR, reg);

 rt2x00mmio_register_read(rt2x00dev, RX_CNTL_CSR, &reg);
 rt2x00_set_field32(&reg, RX_CNTL_CSR_LOAD_RXD, 1);
 rt2x00mmio_register_write(rt2x00dev, RX_CNTL_CSR, reg);

 return 0;
}
