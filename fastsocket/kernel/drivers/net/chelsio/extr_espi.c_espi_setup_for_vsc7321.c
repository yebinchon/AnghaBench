
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ regs; } ;
typedef TYPE_1__ adapter_t ;


 scalar_t__ A_ESPI_CALENDAR_LENGTH ;
 scalar_t__ A_ESPI_RX_FIFO_ALMOST_EMPTY_WATERMARK ;
 scalar_t__ A_ESPI_RX_FIFO_ALMOST_FULL_WATERMARK ;
 scalar_t__ A_ESPI_SCH_TOKEN0 ;
 scalar_t__ A_ESPI_SCH_TOKEN1 ;
 scalar_t__ A_ESPI_SCH_TOKEN2 ;
 scalar_t__ A_ESPI_TRAIN ;
 scalar_t__ A_PORT_CONFIG ;
 int V_RX_NPORTS (int) ;
 int V_TX_NPORTS (int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void espi_setup_for_vsc7321(adapter_t *adapter)
{
 writel(0x1f4, adapter->regs + A_ESPI_SCH_TOKEN0);
 writel(0x1f401f4, adapter->regs + A_ESPI_SCH_TOKEN1);
 writel(0x1f4, adapter->regs + A_ESPI_SCH_TOKEN2);
 writel(0xa00, adapter->regs + A_ESPI_RX_FIFO_ALMOST_FULL_WATERMARK);
 writel(0x1ff, adapter->regs + A_ESPI_RX_FIFO_ALMOST_EMPTY_WATERMARK);
 writel(1, adapter->regs + A_ESPI_CALENDAR_LENGTH);
 writel(V_RX_NPORTS(4) | V_TX_NPORTS(4), adapter->regs + A_PORT_CONFIG);

 writel(0x08000008, adapter->regs + A_ESPI_TRAIN);
}
