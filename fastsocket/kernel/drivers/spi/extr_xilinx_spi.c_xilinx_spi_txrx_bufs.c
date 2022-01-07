
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct xilinx_spi {int remaining_bytes; scalar_t__ regs; int done; int rx_ptr; int tx_ptr; } ;
struct spi_transfer {int len; int rx_buf; int tx_buf; } ;
struct spi_device {int master; } ;


 int INIT_COMPLETION (int ) ;
 scalar_t__ XIPIF_V123B_IIER_OFFSET ;
 scalar_t__ XSPI_CR_OFFSET ;
 int XSPI_CR_TRANS_INHIBIT ;
 int XSPI_INTR_TX_EMPTY ;
 int in_be16 (scalar_t__) ;
 int in_be32 (scalar_t__) ;
 int out_be16 (scalar_t__,int) ;
 int out_be32 (scalar_t__,int) ;
 struct xilinx_spi* spi_master_get_devdata (int ) ;
 int wait_for_completion (int *) ;
 int xilinx_spi_fill_tx_fifo (struct xilinx_spi*) ;

__attribute__((used)) static int xilinx_spi_txrx_bufs(struct spi_device *spi, struct spi_transfer *t)
{
 struct xilinx_spi *xspi = spi_master_get_devdata(spi->master);
 u32 ipif_ier;
 u16 cr;



 xspi->tx_ptr = t->tx_buf;
 xspi->rx_ptr = t->rx_buf;
 xspi->remaining_bytes = t->len;
 INIT_COMPLETION(xspi->done);

 xilinx_spi_fill_tx_fifo(xspi);




 ipif_ier = in_be32(xspi->regs + XIPIF_V123B_IIER_OFFSET);
 out_be32(xspi->regs + XIPIF_V123B_IIER_OFFSET,
   ipif_ier | XSPI_INTR_TX_EMPTY);


 cr = in_be16(xspi->regs + XSPI_CR_OFFSET) & ~XSPI_CR_TRANS_INHIBIT;
 out_be16(xspi->regs + XSPI_CR_OFFSET, cr);

 wait_for_completion(&xspi->done);


 out_be32(xspi->regs + XIPIF_V123B_IIER_OFFSET, ipif_ier);

 return t->len - xspi->remaining_bytes;
}
