
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ regs; } ;
typedef TYPE_1__ adapter_t ;


 scalar_t__ A_ESPI_CALENDAR_LENGTH ;
 scalar_t__ A_ESPI_RX_FIFO_ALMOST_EMPTY_WATERMARK ;
 scalar_t__ A_ESPI_RX_FIFO_ALMOST_FULL_WATERMARK ;
 scalar_t__ A_PORT_CONFIG ;
 int V_RX_NPORTS (int) ;
 int V_TX_NPORTS (int) ;
 scalar_t__ is_T2 (TYPE_1__*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void espi_setup_for_ixf1010(adapter_t *adapter, int nports)
{
 writel(1, adapter->regs + A_ESPI_CALENDAR_LENGTH);
 if (nports == 4) {
  if (is_T2(adapter)) {
   writel(0xf00, adapter->regs + A_ESPI_RX_FIFO_ALMOST_FULL_WATERMARK);
   writel(0x3c0, adapter->regs + A_ESPI_RX_FIFO_ALMOST_EMPTY_WATERMARK);
  } else {
   writel(0x7ff, adapter->regs + A_ESPI_RX_FIFO_ALMOST_FULL_WATERMARK);
   writel(0x1ff, adapter->regs + A_ESPI_RX_FIFO_ALMOST_EMPTY_WATERMARK);
  }
 } else {
  writel(0x1fff, adapter->regs + A_ESPI_RX_FIFO_ALMOST_FULL_WATERMARK);
  writel(0x7ff, adapter->regs + A_ESPI_RX_FIFO_ALMOST_EMPTY_WATERMARK);
 }
 writel(V_RX_NPORTS(nports) | V_TX_NPORTS(nports), adapter->regs + A_PORT_CONFIG);

}
